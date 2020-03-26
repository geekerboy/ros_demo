#include <actionlib/server/simple_action_server.h>
#include "ros_demo/dishAction.h"  // Note: "Action" is appended
#include <ros/ros.h>

typedef actionlib::SimpleActionServer<ros_demo::dishAction> Server;

void execute(const ros_demo::dishGoalConstPtr &action_goal,
             Server *as) // Note: "Action" is not appended to DoDishes here
{
  // Do lots of awesome groundbreaking robot stuff here
  ROS_INFO("The dish id is: %d", action_goal->disher_id);
  as->setSucceeded();
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "action_dishes_server");
  ros::NodeHandle n;
  Server server(n, "do_dishes", boost::bind(&execute, _1, &server), false);
  server.start();
  ROS_INFO("Ready to go !");
  ros::spin();
  return 0;
}
