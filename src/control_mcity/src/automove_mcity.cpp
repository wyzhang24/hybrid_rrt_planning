//Pengcheng Cai

#include "ros/ros.h"
#include <math.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <ctime>
#include <chrono>
#include <string>
#include <stdlib.h>

//Path_planning library
#include "map.hpp"
#include "pathfinder_hybrid_astar.hpp"

//Contoller library
#include "pid_controller.hpp"

// message libraries
#include "visualization_msgs/Marker.h"
#include "nav_msgs/OccupancyGrid.h"
#include "std_msgs/Float32MultiArray.h"
#include "std_msgs/String.h"
#include "tf/tf.h"

// message for mcity
#include "mcity_msg/Control.h"
#include <nav_msgs/Odometry.h>
#include "dbw_mkz_msgs/WheelSpeedReport.h"

using namespace std;
using namespace std::chrono;

const double diameter = 17 / 39.37; //meter. Other choice are 18,19,20 in inches

class AutoparkingControl
{
public:
  AutoparkingControl()
  {
    cout << "waitting for receiving msgs" << endl;
    //Topic want to subscribe
    subveh_ = n_.subscribe<nav_msgs::Odometry>("/gps/odom", 1, &AutoparkingControl::mainCallback, this);
    subspeed_ = n_.subscribe<dbw_mkz_msgs::WheelSpeedReport>("/vehicle/wheel_speed_report", 1, &AutoparkingControl::speedCallback, this);
    //Topic to publish
    pubcmd_ = n_.advertise<mcity_msg::Control>("/mkz_bywire_intf/control", 1);
  }

  void speedCallback(const dbw_mkz_msgs::WheelSpeedReport::ConstPtr &msg)
  {
    speed = (msg->rear_left + msg->rear_left) / 2; //radius per second
    speed = speed / (2 * PI);                      //round per second
    speed = speed * PI * diameter;                 //meter per second
  }

  void mainCallback(const nav_msgs::Odometry::ConstPtr &vehicle_current_info)
  {
    cout << "get in main callback" << endl;

    // Get vehicle position
    current_x = vehicle_current_info->pose.pose.position.x;
    current_y = vehicle_current_info->pose.pose.position.y;
    //current_yaw = vehicle_current_info->pose.pose.orientation.z;
    tf::Quaternion q(
        vehicle_current_info->pose.pose.orientation.x,
        vehicle_current_info->pose.pose.orientation.y,
        vehicle_current_info->pose.pose.orientation.z,
        vehicle_current_info->pose.pose.orientation.w);
    tf::Matrix3x3 m(q);
    double roll, pitch, yaw;
    m.getRPY(roll, pitch, yaw);
    current_yaw = yaw;

    //First time enter the follow path mode, read the path
    cout << "ENTER THE PATH FOLLOWING MODE" << endl;
    if (first_cahneg_gear)
    {
      cout << "fuck me" << endl;
      command.brake_cmd = 0.3;
      command.steering_cmd = 0.0;
      command.throttle_cmd = 0.0;
      command.gear_cmd = 4;
      pubcmd_.publish(command);
      first_cahneg_gear = false;
    }
    if (first_time)
    {
      // Load the whole map and save it to "path"
      cout << "starting read path" << endl;
      string filename = "pose.dat";
      ifstream fin(filename);
      if (!fin.is_open())
      {
        cout << "Open Failed !!!!" << endl;
      }
      while (fin >> xp >> yp >> yyp >> dp)
      {
        path.x.push_back(stod(xp));
        path.y.push_back(stod(yp));
        path.yaw.push_back(stod(yyp));
        path.yaw1.push_back(0);
        path.steer.push_back(0);
        path.direction.push_back(stod(dp));
      }
      first_time = false;
      cout << "finished read path" << endl;
      savefile_realpath.open("real_path");
    }
    if (seg)
    {
      //Segmentate the whole path into pieces according to the change direction point
      // After finished a segement, seg will be set to true and we load the new segement
      //Shift gear to proper position (foward or reverse)
      //Path segment is first saved to "path_seg" object than a pointer "path_" is made
      //to point to that "path_seg". path_seg is actually redendunt, i'm too lazy to change it
      cout << "start segementating the path" << endl;
      int reverse_idx = find_next_reverse_idx(&path, idx);
      cout << "found the reverse point" << endl;
      path_seg.x.clear();
      path_seg.y.clear();
      path_seg.yaw.clear();
      path_seg.yaw1.clear();
      path_seg.steer.clear();
      path_seg.direction.clear();
      cout << "cleared the previous path" << endl;
      for (idx; idx < reverse_idx; idx++)
      {
        cout << idx << endl;
        path_seg.x.push_back(path.x[idx]);
        path_seg.y.push_back(path.y[idx]);
        path_seg.yaw.push_back(path.yaw[idx]);
        path_seg.yaw1.push_back(path.yaw1[idx]);
        path_seg.steer.push_back(path.steer[idx]);
        path_seg.direction.push_back(path.direction[idx]);
      }
      cout << "generated the segment path" << endl;
      path_seg.cost = 0;
      path_ = &path_seg;
      curr_idx = 0;
      seg = false;
      cout << "reverse point" << idx << endl;
      if (path_seg.direction[0] > 0.5)
      {
        //shift_gear(4);
      }
      else
      {
        //shift_gear(2);
      }
      cout << "gear is shifted to the proper position accordingly" << endl;
    }

    //Update the index to find the closest waypoints that is ahead or behind of the car according to path direction
    cout << "cur_idx before update " << curr_idx << endl;
    find_closest_idx(path_, current_x, current_y, curr_idx);
    //find_reference_idx(path_, current_x, current_y, curr_idx);
    cout << "cur_idx after update " << curr_idx << endl;
    current_dir = path_->direction[curr_idx];

    //Calculate control command
    control_command = cal_control_command(path_, current_x, current_y, current_yaw, curr_idx, prev_x, prev_y, cte_prev, epsi_prev, speed, accel);
    prev_x = current_x;
    prev_y = current_y;
    accel = control_command[0];
    stop_flag = control_command[2];
    cte_prev = control_command[3];
    epsi_prev = control_command[4];

    // Check whether the path segment is finished
    // Then check whether we finished the whole path
    if (stop_flag > 0)
    {
      cout << "Reach Segment Goal Position" << endl;
      seg = true;
      if (idx + 2 > path.x.size())
      {
        cout << "Reach Final Goal Position" << endl;
        end_flag = 1;
        seg = false;
        savefile_realpath.close();
      }
    }

    // Response according to current status
    if (end_flag == 1)
    {
      cout << "Path is finished" << endl;
      //shift_gear(1);
      //publish the command
      while (speed > 0)
      {
        command.brake_cmd = 0.23;
        command.steering_cmd = 0.0;
        command.throttle_cmd = 0.0;
        command.gear_cmd = 0;
        pubcmd_.publish(command);
      }
    }
    else if (seg)
    {
      cout << "Finished a path segement, stay steady untill next moving command come in" << endl;
//      shift_gear(3);
      //publish the command
      command.brake_cmd = 0.2;
      command.steering_cmd = 0.0;
      command.throttle_cmd = 0.0;
      command.gear_cmd = 0;
      pubcmd_.publish(command);
    }
    else
    {
      cout << "Following Path" << endl;
      // Already shifted to the correct gear while segementating the path
      // Start to move
      cout << "accel is " << accel << endl;
      if (accel < 0)
      {
        if ((speed - speed_prev) > 0.05)
        {
          command.brake_cmd = 0.2;
          command.throttle_cmd = 0.0;
        }
        if ((speed - speed_prev) > 0 && (speed - speed_prev) < 0.05)
        {
          command.brake_cmd = 0.175;
          command.throttle_cmd = 0.0;
        }
        else
        {
          command.brake_cmd = 0.0;
          command.throttle_cmd = 0.0;
        }
      }
      else
      {
        command.brake_cmd = 0.0;
        command.throttle_cmd = 0.25;
      }
      command.steering_cmd = control_command[1];
      if (current_dir > 0)
      {
        if (command.steering_cmd > PI)
        {
          // command.turn_signal_cmd = 1;
        }
        else if (command.steering_cmd < -PI)
        {
          //command.turn_signal_cmd = 2;
        }
      }
      pubcmd_.publish(command);
    }
    //save real path
    speed_prev = speed;
    savefile_realpath << current_x << " " << current_y << endl;
    cout << "=============================================================================================================" << endl;
  }

private:
  ofstream savefile_control;
  ofstream savefile_realpath;
  ofstream savefile_error;
  ofstream savefile_error_1st;
  ofstream savefile_dt;
  ros::NodeHandle n_;
  ros::Publisher pub_;
  ros::Publisher pubcmd_;
  ros::Subscriber subveh_;
  ros::Subscriber subodo_;
  ros::Subscriber submode_;
  ros::Subscriber subspeed_;
  mcity_msg::Control command;

  clock_t start;
  clock_t prev_time = 0;
  double dt;

  Path_Final *path_;
  Path_Final path;
  Path_Final path_seg;
  int curr_idx = 0;
  int idx = 0;
  double current_x;
  double current_y;
  double current_yaw;
  double current_dir = 1;
  double current_v;
  double prev_x = 0;
  double prev_y = 0;
  double cte_prev = 0;
  double epsi_prev = 0;
  double desired_speed;
  double stop_flag = 0;
  double accel = 0;
  double throttle = 0;
  double speed = 0;
  double speed_prev = 0;
  vector<double> control_command;
  //Indicator
  string car_mode = "followpath";
  bool first_time = true;
  bool first_info = true;
  bool seg = true;
  bool first_cahneg_gear = true;
  bool first_go_straight = true;
  bool first_stop = true;
  int end_flag = 0;

  //to read path
  string xp;
  string yp;
  string yyp;
  string yyyp;
  string sp;
  string dp;
}; //End of class AutoparkingControl

int main(int argc, char **argv)
{
  ros::init(argc, argv, "automove_control");
  ros::NodeHandle n;
  ROS_INFO_STREAM("Reading Vechile Info from topic");
  cout << "before creating the object" << endl;
  AutoparkingControl autopark_control;
  ros::spin();
  return 0;
}
