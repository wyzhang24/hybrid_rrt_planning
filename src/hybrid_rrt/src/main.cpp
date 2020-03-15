#include<iostream>
#include<vector>
#include<string>
#include "ros/ros.h"
#include "hybrid_rrt_h/rrt.hpp"
#include "hybrid_rrt/path_point.h"
#include "hybrid_rrt/path_list.h"

int main(int argc, char **argv){

    ros::init(argc, argv, "planner");

    ros::NodeHandle n;

    ros::Publisher path_pub = n.advertise<hybrid_rrt::path_list>("path", 1000);
    ros::Rate loop_rate(10);
    hybrid_rrt::path_point node;
    hybrid_rrt::path_list path;
    while (0 == path_pub.getNumSubscribers()) {
        ROS_INFO("From planner: Waiting for subscribers to connect");
        loop_rate.sleep();
    }


        // loop_rate.sleep();

    vector<vector<double>> path_list = execute_rrt({}, {0, 0, 0, 0, 0}, {10, 10, 0, 0, 0});

    for(auto p:path_list){

        node.x = p[0];
        node.y = p[1];
        node.yaw = p[2];
        node.dir = p[3];

        path.path.push_back(node);
    }
    
    path_pub.publish(path);

    ros::spin();
    
    return 0;
}


