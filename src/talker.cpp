#include <ros/ros.h>
#include "ros_demo/gps.h"
// #include <mymathfunction.h>
int main(int argc,char** argv){
  ros::init(argc,argv,"talker");
  ros::NodeHandle nh;
  ros_demo::gps msg;
  msg.x=1.0;
  msg.y=1.0;
  msg.state="working";
  ros::Publisher pub = nh.advertise<ros_demo::gps>("gps_info",1);//creat publisher
  // ros::Rate loop_rate(18);
   ros::Rate loop_rate(1); //测试rosbag功能，放慢发送速度
   // 测试cmake install以及动态链接库功能
    // double base = 3.14;
    // int exponent = 2;
    // std::cout<<"Input the nums to calculate "<<std::endl;
    // std::cin>>base>>exponent;
    // double result = power(base, exponent);
    // std::cout<<base<<"^"<<exponent<<" is "<<result<<std::endl;
    // 测试cmake install以及动态链接库功能
    int i=10;
  int tmpnum=0;
  while(ros::ok()){
  	msg.x=1.03*msg.x;
  	msg.y=1.01*msg.y;
	//ROS_INFO("x=%f,y=%f,distance=%f",msg.x,msg.y,sqrt(pow(msg.x,2)+pow(msg.y,2)));  //output msg
	pub.publish(msg);
	loop_rate.sleep();
	//--i;

	++tmpnum;
	msg.num=tmpnum;
	ROS_INFO("It's the %d number",msg.num);

}

  return 0;
} 

