#include "ros_demo/add.h"
#include "ros/ros.h"
#include <cstdlib>
#include "ros_demo/gps.h"

int main(int argc, char **argv) {
  ros::init(argc, argv, "add_two_ints_client");
//  if (argc != 3) {
//    ROS_INFO("usage: add_two_ints_client X Y");
//    return 1;
//  }

	ROS_INFO("the program is to add two ints");
	double num_1=0,num_2=0;

  ros::NodeHandle n;
  ros::ServiceClient client =n.serviceClient<ros_demo::add>("add_two_ints"); //
  ros::Publisher pub=n.advertise<ros_demo::gps>("add_result",1);

  ros_demo::add mysrv;
  ros_demo::gps test_gps;
  ros::Rate(5);

  while (ros::ok()){
				std::cout<<"输入第一个加数："<<std::endl;
				std::cin>>num_1;
				std::cout<<"输入第二个加数："<<std::endl;
				std::cin>>num_2;
				mysrv.request.num1 = num_1;
				mysrv.request.num2 = num_2;
				if (client.call(mysrv)) {
						ROS_INFO("Sum: %ld",mysrv.response.sum);

				} else {
						ROS_ERROR("Failed to call service add_two_ints");
						return 1;
				}
		    test_gps.num=mysrv.response.sum;
				pub.publish(test_gps);


  }
  return 0;
}
