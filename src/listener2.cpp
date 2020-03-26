#include <ros/ros.h>
#include "ros_demo/gps.h"
#include <std_msgs/Float32.h>


void gpsCallback(const ros_demo::gps::ConstPtr &msg)
{
    static int  counter=0;
    std_msgs::Float32 distance;
    distance.data=sqrt(pow(msg->x,2)+pow(msg->y,2));
    ROS_INFO("Listener:Distance to origin=%f,state=%s",distance.data,msg->state.c_str());
    ++counter;
    ROS_INFO("It's the %d callback,the send num is %d",counter,msg->num);


}

int main(int argc,char** argv){
    ros::init(argc,argv,"listener");
    ros::NodeHandle n;
    ros::Rate loop_rate(3);
    ros::Subscriber sub=n.subscribe("gps_info",5,gpsCallback);
    while(ros::ok())
    {

        ros::spinOnce();
        loop_rate.sleep();

    }
    return 0;


}
