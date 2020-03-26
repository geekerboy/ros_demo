#include "ros_demo/add.h"
#include "ros/ros.h"
#include <cstdlib>

int main(int argc, char **argv) {
  ros::init(argc, argv, "add_two_ints_client");
  if (argc != 3) {
    ROS_INFO("usage: add_two_ints_client X Y");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client =
  n.serviceClient<ros_demo::add>("add_two_ints"); //
  ros_demo::add mysrv;
  mysrv.request.num1 = atol(argv[1]);
  mysrv.request.num2 = atol(argv[2]);
  if (client.call(mysrv)) {
    ROS_INFO("Sum: %ld", (long int)mysrv.response.sum);
    // ROS_INFO("%s %s %s",argv[0],argv[1],argv[2]);

  } else {
    ROS_ERROR("Failed to call service add_two_ints");
    return 1;
  }

  return 0;
}
