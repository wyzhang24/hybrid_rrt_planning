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

class SpeedControl
{
public:
  SpeedControl()
  {
    cout << "waitting for receiving msgs" << endl;
    //Topic want to subscribe
    subcmd_ = n_.subscribe<std_msgs::String>("motion_command", 1, &SpeedControl::desiredSpeedCallback, this);
    subspeed_ = n_.subscribe<dbw_mkz_msgs::WheelSpeedReport>("/vehicle/wheel_speed_report", 1, &SpeedControl::mainCallback, this);
    //Topic to publish
    pubcmd_ = n_.advertise<mcity_msg::Control>("/mkz_bywire_intf/control", 1);
  }

  void desiredSpeedCallback(const std_msgs::String::ConstPtr &msg)
  {
    desired_info = msg->data;
    speed_desired = stod(desired_info.substr(0, desired_info.find(delimiter)));
    steering_desired = stod(desired_info.substr(desired_info.find(delimiter) + 1));
    cout << "desired speed is " << speed_desired << endl;
    cout << "desired steering is " << steering_desired << endl;
  }

  void mainCallback(const dbw_mkz_msgs::WheelSpeedReport::ConstPtr &msg)
  {
    if (first)
    {
      command.brake_cmd = 0.175;
      command.throttle_cmd = 0.0;
      command.steering_cmd = 0.0;
      command.gear_cmd = 4;
      pubcmd_.publish(command);
    }
    else
    {
      cout << "get in main callback" << endl;
      speed = (msg->rear_left + msg->rear_right) / 2; //radius per second
      speed = speed / (2 * PI);                      //round per second
      speed = speed * PI * diameter;                 //meter per second
      



      pubcmd_.publish(command);
    }
  }

private:
  ros::NodeHandle n_;
  ros::Publisher pubcmd_;
  ros::Subscriber subcmd_;
  ros::Subscriber subspeed_;

  //control command
  mcity_msg::Control command;
  double throttle = 0;

  //states
  double speed = 0;

  string desired_info;
  double speed_desired;
  double steering_desired;
  const string delimiter = ",";

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
