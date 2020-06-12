#include "ros/ros.h"
#include "ros_demo/add.h"  //包含srv的头文件



bool add_sum(ros_demo::add::Request  &req,ros_demo::add::Response &res)
{
		res.sum=req.num1+req.num2;
		ROS_INFO("request: x=%ld, y=%ld,sending back response: [%ld]",
						(long int)req.num1, (long int)req.num2, (long int)res.sum);
    return true;
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "add_two_ints_server");
  ros::NodeHandle nh;
  nh.setParam("myparam",2);

  ros::ServiceServer service = nh.advertiseService("add_two_ints", add_sum);
  ROS_INFO("Ready to add two ints.");
  ros::Rate loop_rate(5);

  while(ros::ok()){
      ros::spinOnce();
      loop_rate.sleep();
  }
  return 0;
}
