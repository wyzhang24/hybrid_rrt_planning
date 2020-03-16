#ifndef DEFINE_RRT_PARA_H
#define DEFINE_RRT_PARA_H

#include <vector>
#include <math.h>
#include "../def_all.hpp"


// const double PI = 3.14159;
// const double D2R = PI/180.0;
// const double R2D = 180.0/PI;

const double step_len = 0.5;

const double xrange_map = 20;
const double yrange_map = 20;

const double max_yaw_range = 4.0 * PI / 180.0; // the maximum yaw it can reach
const int max_attemp_num = 20; //cf: 3
extern std::vector<std::vector<double>> obstacles = {};

const double car_radius = 0.18;

// using haokun's parameters
extern std::vector<double> goal = {};
extern std::vector<double> start = {};
extern bool reverse_sign = false;


const double threshod = 0.15;

const int max_iteration = 100000;

const std::string trapped = "Trapped";
const std::string reached = "Reached";
const std::string advanced = "Advanced";


#endif
