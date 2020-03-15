#include <math.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <ctime>
#include <chrono>
#include <string>
#include <stdlib.h>

vector<double> get_actuator(double u, double v)
{
    vector<double> cmd;
    double throttle;
    double brake;
    const int mass = 1814;              // in kg
    const double diameter = 17 / 39.37; //diameter in meters
    double force;
    double brake_torque;
    // Get the proper actuator value
    if (u < 0)
    {
        throttle = 0;
        force = mass * u;
        brake_torque = force * diameter / 2.0;
        brake_torque *= 1.5958; //make up for the miscalculation, according to paper 4m/s^2 -> 0.3 brake pedal
        if (brake_torque < 3400 && brake_torque > 500)
        {
            brake = (brake_torque + 6911.0) / 32222.0;
        }
        else
        {
            brake = 0.2;
        }
    }
    else
    {
        brake = 0;
        

    }
}