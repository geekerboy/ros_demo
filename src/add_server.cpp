#include "ros/ros.h"
#include "ros_demo/add.h"  //包含srv的头文件



int mode_choose_value=1;//1=+,2=-,3=x;
bool add_sum(ros_demo::add::Request  &req,
         ros_demo::add::Response &res)
{
  switch(mode_choose_value) {
      case 1:
          res.sum=req.num1+req.num2;ROS_INFO("The mode_choose_value=%d",mode_choose_value);
          break;
      case 2:
          res.sum=req.num1-req.num2;ROS_INFO("The mode_choose_value=%d",mode_choose_value);
          break;

      case 3:
          res.sum=req.num1*req.num2;
          break;

      default:
          res.sum=req.num1*req.num2;ROS_INFO("The mode_choose_value=%d",mode_choose_value);
          break;

  }

  ROS_INFO("request: x=%ld, y=%ld", (long int)req.num1, (long int)req.num2);
  ROS_INFO("sending back response: [%ld]", (long int)res.sum);
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
  int tmp=1;
  while(ros::ok()){
      ++tmp;

      if(nh.getParam("myparam", mode_choose_value))
      {
          //ROS_INFO("The mode_choose_value: [%d]", mode_choose_value);
      }
      ros::spinOnce();
      loop_rate.sleep();
  }
  return 0;
}
