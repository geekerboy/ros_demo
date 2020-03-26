#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <ros_demo/dishAction.h> // Note: "Action" is appended
#include <ros_demo/dishGoal.h>

typedef actionlib::SimpleActionClient<ros_demo::dishAction> Client;

int main(int argc, char **argv) {
  ros::init(argc, argv, "action_dishes_client");
  Client client("do_dishes", true); // true -> don't need ros::spin()
  client.waitForServer();
  ros_demo::dishGoal action_goal;
  ros::Rate loop_rate(1);
  int id=0;
  while(ros::ok()){
    ++id;
    action_goal.disher_id=(uint32_t)id;
    client.sendGoal(action_goal);
    client.waitForResult(ros::Duration(5.0));
    if (client.getState() == actionlib::SimpleClientGoalState::SUCCEEDED) {
      ROS_INFO("Yay! The dishes %d are now clean",action_goal.disher_id);
    } else {
      printf("Current State: %s\n", client.getState().toString().c_str());
    }
    loop_rate.sleep();
  }


  return 0;
}
