//Author: Pengcheng Cai
//7/1/2019
#include <math.h>
#include <chrono>
#include <iostream>
#include <thread>
#include <vector>
#include "pathfinder_hybrid_astar.hpp"

using namespace std;  


int find_next_reverse_idx(Path_Final* path, int prev_idx){
  // prev_idx is the previous reversing point
  // we find the next reversing point and return it's index
  int ref_idx = prev_idx;
  int i = prev_idx;
  for(i;i < path->x.size();++i){
      if(path->direction[prev_idx] == path->direction[ref_idx])
      {
        ref_idx ++;
      } 
      else{
        break;
      }
  } 
  return ref_idx; //update the prev_indx, which is actually current index
}
void find_closest_idx(Path_Final* path, double px, double py, int &curr_idx){
  int i = curr_idx;
  int retval = curr_idx;
  double dist_temp = 1000000.0;
  for (i; i< path->x.size(); ++i){
      if (dist_temp >= sqrt((path->x[i]-px)*(path->x[i]-px) + (path->y[i]-py)*(path->y[i]-py))){
        dist_temp = sqrt((path->x[i]-px)*(path->x[i]-px) + (path->y[i]-py)*(path->y[i]-py));
        retval = i;
      }
  }
  curr_idx = retval;
}
bool is_ahead(double px_ref, double py_ref, double yaw_ref, double px, double py){
  double angle = atan2(py_ref-py,px_ref-px);
  double angle_diff = yaw_ref-angle;
  if(angle_diff > M_PI) angle_diff -= 2*M_PI;
  if(angle_diff < -M_PI) angle_diff += 2*M_PI;
  if(abs(angle_diff)<M_PI/2.0) return true;
  return false;
}
void find_reference_idx(Path_Final* path, double px, double py, int &curr_idx){
  int i = curr_idx;
  int retval = curr_idx;
  for (i; i< path->x.size(); ++i){
    if(is_ahead(path->x[i],path->y[i],path->yaw1[i],px,py)){
      retval = i;
      break;
    }
  }
  curr_idx = retval;
}

vector<double> cal_control_command(Path_Final* path, double px, double py, double psi, int curr_idx, double px_prev, double py_prev, double cte_prev, double epsi_prev,double speed, double accel_prev){
  // path is a pointer points to a path_final object includes the path information
  // px, py, psi, are the real time vechile information generated from odometry for locolization
  // px_prev, py_prev is the last px, py

  int curr_direction;
  double steering_angle = 0;
  double throttle = 0;
  double yaw_path;
  vector<double> control_command;
  double yaw = psi;
  double finished = 0;
  double ref_v = 2.5;
  double v = sqrt((px-px_prev)*(px-px_prev)+(py-py_prev)*(py-py_prev))/0.02;

  cout << "Start Checking Whether to Stop" << endl;
  if(curr_idx == path->x.size()-1){
    cout<<"A SEGMENT IS DONE"<<endl;
    return {0,0,1,0,0};
  }

  //Record current direction
  if(!path->direction[curr_idx]) curr_direction = -1;
  else curr_direction = 1;
  ref_v = ref_v*curr_direction;//Read from the simulator screen
  
  if(curr_idx == 0){
    yaw_path = psi;
  }
  else{
    yaw_path = atan2(path->y[curr_idx] - path->y[curr_idx-1], path->x[curr_idx] - path->x[curr_idx-1]);
  }

  cout<<"Yaw_path angle is: "<<yaw_path<<endl;
  cout<< "yaw angle is: " << yaw << endl;

  //update read speed, add direction to it
  speed = curr_direction * speed;

  // We can choose to use calculated speed or read speed
  cout << "calculated v is " << v << endl;
  cout << "odometry read speed is " << speed << endl;


  //Look-ahead Prediction
  //double px_ahead = px;
  //double py_ahead = py;
  //double px_delta = v * dt_carla * cos(yaw);
  //double py_delta = v * dt_carla * sin(yaw);
  //px_ahead += px_delta;
  //py_ahead += py_delta;
  //int ref_idx = find_ref_idx_2(path,px_ahead,py_ahead,prev_idx_in); 

  //cout<<"Reference Index is = "<<ref_idx<<endl;
  //cout<<"Current Index is = "<<curr_idx<<endl;

  double yaw_ref = path->yaw[curr_idx];
  double x_ref = path->x[curr_idx];
  double y_ref = path->y[curr_idx];

  //Update Reference Speed

  //Generate cte and epsi estimate
  // whether it's foward or backward (only checked when path has positive slope)
  // cte > 0 -> path locates at left
  // cte < 0 -> path locates at right
  double cte  = -sin(yaw_path)*(x_ref-px)+cos(yaw_path)*(y_ref-py);
  cout << "cte is " << cte << endl;

  // epsi > 0 -> real heading is right of desired heading
  // epsi < 0 -> real heading is left of desired heading
  double epsi = (yaw_ref - yaw);
  if(epsi > M_PI){
    epsi -= 2*M_PI;
  }
  else if(epsi < -M_PI){
    epsi += 2*M_PI;
  }
  cout << "epsi is " << epsi <<endl;
  double diff_cte = (cte - cte_prev);
  double diff_epsi = (epsi - epsi_prev);
  //cout << "Using calculated speed" << endl;
  cout << "Using read speed" << endl;
  double diff_v = ref_v - speed;

  double Kepsi_p = 1.5;  //P-angle error
  double Kepsi_d  = 0.0; //D-angle error
  double Kcte_p  = 0.25;  //P-lateral error
  double Kcte_d = 0.0;   //D-lateral error 
  double Kv_p = 5;  //P-speed error
  double Kv_d = 0.1;  //D-speed error

  /* 
  //Set 1, throttle = 0.2; Constant throttle
  double Kepsi_p = 1.5;  //P-angle error
  double Kepsi_d  = 0.0; //D-angle error
  double Kcte_p  = 0.25;  //P-lateral error
  double Kcte_d = 0.0;   //D-lateral error 
  double Kv_p = 0.0;  //P-speed error
  double Kv_d = 0.0;  //D-speed error
  */
  
  /*
  //throttle = 0.1; Maybe good for downhill sharp thurn
  double Kepsi_p = 2.0;  //P-angle error
  double Kepsi_d  = 0.0; //D-angle error
  double Kcte_p  = 0.25;  //P-lateral error
  double Kcte_d = 0.0;   //D-lateral error 
  double Kv_p = 0.0;  //P-speed error
  double Kv_d = 0.0;  //D-speed error
  */
  steering_angle = curr_direction*(Kepsi_p * epsi + Kepsi_d * diff_epsi + Kcte_p * cte + Kcte_d * diff_cte);
  steering_angle = steering_angle * 16; // Convert to steering wheel's steering angle
  //if(steering_angle < -90 * M_PI/180.0){steering_angle = -90 * M_PI/180.0;}
  //if(steering_angle > 90 * M_PI/180.0){steering_angle = 90 * M_PI/180.0;}

  double accel = Kv_p*diff_v - Kv_d*accel_prev;

  control_command.push_back(accel);
  control_command.push_back(steering_angle);
  control_command.push_back(finished);
  control_command.push_back(cte);
  control_command.push_back(epsi);
  return control_command; 
}


double speed_PID_control(double speed, double targ_speed, double &errIntegral){
  double PID_P = 0.75;  //P-speed error
  double PID_I = 0.12;  //D-speed error
  double speedGap = targ_speed - speed;

  double P_Val = PID_P * speedGap;

  errIntegral += speedGap * 0.04;


  if (speedGap > 0.8  && speed < 0.25 ) // start
        errIntegral = 0;

    if (speedGap < -0.6 && errIntegral >-3 )
        errIntegral -= 0.45;
    
    if (speedGap > 0.8 && errIntegral <3 )
        errIntegral += 0.35;

    errIntegral = max(-35.0, min(35.0, errIntegral));

    double I_Val = PID_I * errIntegral;
    
    // consider road load
    

    return P_Val + I_Val;

}

double cal_throttle_pedal_opening(double acceleration){
    double throttle_Table[3][2] = //throttle command, acceleration
    {
        {0.00, 0.10},
        {0.15, 0.30}, //0.65
        {0.60, 4.00}
    };
  
  double pedal_opening_command = 0;

  if(acceleration <= throttle_Table[0][1])
      return pedal_opening_command;

  if(acceleration >= throttle_Table[2][1])
      return pedal_opening_command;

  for (int i = 0; i < 2; ++i)
  {
      if ( acceleration >= throttle_Table[i+0][1] &&
            acceleration <  throttle_Table[i+1][1])
      {
          pedal_opening_command = 
              throttle_Table[i][0] + (acceleration - throttle_Table[i][1])
              * (throttle_Table[i+1][0] - throttle_Table[i][0])
              / (throttle_Table[i+1][1] - throttle_Table[i][1]);
              
              break;
      }
  }

  return pedal_opening_command;

}


double cal_brake_pedal_opening(double deceleration)
{
   double brake_Table[6][2] = //opening command,torque
    {
        {0.180, 0.0},
        {0.205, 200},
        {0.210, 400},
        {0.240, 536},
        {0.280, 1632},
        {0.320, 3068}
    };
    double torque_demand = 1800 * fabs(deceleration) * 0.673 / 2;
    double pedal_opening_command = 0;

    if ( torque_demand >= brake_Table[5][1]) //row 10
        return brake_Table[5][0];

    for (int i = 0; i < 5; ++i)
    {
        if (torque_demand >= brake_Table[i][1] && torque_demand < brake_Table[i+1][1])
        {
            pedal_opening_command = 
                brake_Table[i][0] + (torque_demand - brake_Table[i][1])
                * (brake_Table[i+1][0] - brake_Table[i][0])
                / (brake_Table[i+1][1] - brake_Table[i][1]);

            break;
        }
    }

    return pedal_opening_command;
}