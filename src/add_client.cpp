#include "ros_demo/add.h"
#include "ros/ros.h"
#include <cstdlib>

int main(int argc, char **argv) {
  ros::init(argc, argv, "add_two_ints_client");
//  if (argc != 3) {
//    ROS_INFO("usage: add_two_ints_client X Y");
//    return 1;
//  }
	ROS_INFO("the program is to add two ints");
	double num_1=0,num_2=0;
	std::cout<<"输入第一个加数："<<std::endl;
	std::cin>>num_1;
	std::cout<<"输入第二个加数："<<std::endl;
	std::cin>>num_2;
  ros::NodeHandle n;
  ros::ServiceClient client =n.serviceClient<ros_demo::add>("add_two_ints"); //
  ros_demo::add mysrv;
  mysrv.request.num1 = num_1;
  mysrv.request.num2 = num_2;
  if (client.call(mysrv)) {
    ROS_INFO("Sum: %ld",mysrv.response.sum);
    // ROS_INFO("%s %s %s",argv[0],argv[1],argv[2]);

  } else {
    ROS_ERROR("Failed to call service add_two_ints");
    return 1;
  }

  return 0;
}
