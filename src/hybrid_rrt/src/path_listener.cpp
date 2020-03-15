#include<iostream>
#include<vector>
#include<string>
#include "ros/ros.h"
#include "hybrid_rrt_h/rrt.hpp"
#include "hybrid_rrt/path_point.h"
#include "hybrid_rrt/path_list.h"



void pathCallback(const hybrid_rrt::path_list::ConstPtr &pth){
    int num = pth->path.size();

    std::cout << "receive path num: " << num << std::endl;
    for(int i = 0; i < num; ++i){
        hybrid_rrt::path_point pt = pth->path[i];

        std::cout << "x: " << pt.x << " y: " << pt.y <<  " yaw: " << pt.yaw << " dir: " << pt.dir << std::endl;
    }

}



int main(int argc, char **argv){

    ros::init(argc, argv, "path_listener");

    ros::NodeHandle n;
    std::cout <<"im here" << std::endl;
    ros::Subscriber sub = n.subscribe("path", 1000, pathCallback);

    ros::spin();   

    return 0;
}