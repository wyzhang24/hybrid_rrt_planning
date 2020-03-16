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
    std::cout << "publish path" << std::endl;
    ros::Publisher path_pub = n.advertise<hybrid_rrt::path_list>("path", 1000);
    ros::Rate loop_rate(10);
    hybrid_rrt::path_point node;
    hybrid_rrt::path_list path;
    std::cout << "im here" << std::endl;
    while (0 == path_pub.getNumSubscribers()) {
        ROS_INFO("From planner: Waiting for subscribers to connect");
        loop_rate.sleep();
    }


        // loop_rate.sleep();
    vector<array<double,2>> obt;

    for(int i = 0 ; i < 50; ++i){
        obt.push_back({25, i*0.1});
    }



    vector<vector<double>> path_list = execute_rrt(obt, {0, 0, 0, 0, 0}, {50, 0, 0, 0, 0});

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


