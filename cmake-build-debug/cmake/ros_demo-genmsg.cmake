# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_demo: 8 messages, 1 services")

set(MSG_I_FLAGS "-Iros_demo:/home/geeker/test_file/ros_test/src/ros_demo/msg;-Iros_demo:/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_demo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg" NAME_WE)
add_custom_target(_ros_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_demo" "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg" "actionlib_msgs/GoalID:ros_demo/dishResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg" NAME_WE)
add_custom_target(_ros_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_demo" "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg" ""
)

get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg" NAME_WE)
add_custom_target(_ros_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_demo" "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg" ""
)

get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg" NAME_WE)
add_custom_target(_ros_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_demo" "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg" "actionlib_msgs/GoalID:ros_demo/dishGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg" NAME_WE)
add_custom_target(_ros_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_demo" "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg" ""
)

get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv" NAME_WE)
add_custom_target(_ros_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_demo" "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv" ""
)

get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg" NAME_WE)
add_custom_target(_ros_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_demo" "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:ros_demo/dishFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg" NAME_WE)
add_custom_target(_ros_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_demo" "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg" "actionlib_msgs/GoalID:ros_demo/dishActionFeedback:ros_demo/dishGoal:actionlib_msgs/GoalStatus:ros_demo/dishFeedback:ros_demo/dishResult:ros_demo/dishActionResult:ros_demo/dishActionGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg" NAME_WE)
add_custom_target(_ros_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_demo" "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo
)
_generate_msg_cpp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo
)
_generate_msg_cpp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo
)
_generate_msg_cpp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo
)
_generate_msg_cpp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo
)
_generate_msg_cpp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo
)
_generate_msg_cpp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo
)
_generate_msg_cpp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo
)

### Generating Services
_generate_srv_cpp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo
)

### Generating Module File
_generate_module_cpp(ros_demo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_demo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_demo_generate_messages ros_demo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_cpp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_cpp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_cpp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_cpp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_cpp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv" NAME_WE)
add_dependencies(ros_demo_generate_messages_cpp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_cpp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_cpp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_cpp _ros_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_demo_gencpp)
add_dependencies(ros_demo_gencpp ros_demo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_demo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo
)
_generate_msg_eus(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo
)
_generate_msg_eus(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo
)
_generate_msg_eus(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo
)
_generate_msg_eus(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo
)
_generate_msg_eus(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo
)
_generate_msg_eus(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo
)
_generate_msg_eus(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo
)

### Generating Services
_generate_srv_eus(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo
)

### Generating Module File
_generate_module_eus(ros_demo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_demo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_demo_generate_messages ros_demo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_eus _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_eus _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_eus _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_eus _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_eus _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv" NAME_WE)
add_dependencies(ros_demo_generate_messages_eus _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_eus _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_eus _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_eus _ros_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_demo_geneus)
add_dependencies(ros_demo_geneus ros_demo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_demo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo
)
_generate_msg_lisp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo
)
_generate_msg_lisp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo
)
_generate_msg_lisp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo
)
_generate_msg_lisp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo
)
_generate_msg_lisp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo
)
_generate_msg_lisp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo
)
_generate_msg_lisp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo
)

### Generating Services
_generate_srv_lisp(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo
)

### Generating Module File
_generate_module_lisp(ros_demo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_demo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_demo_generate_messages ros_demo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_lisp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_lisp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_lisp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_lisp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_lisp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv" NAME_WE)
add_dependencies(ros_demo_generate_messages_lisp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_lisp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_lisp _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_lisp _ros_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_demo_genlisp)
add_dependencies(ros_demo_genlisp ros_demo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_demo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo
)
_generate_msg_nodejs(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo
)
_generate_msg_nodejs(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo
)
_generate_msg_nodejs(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo
)
_generate_msg_nodejs(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo
)
_generate_msg_nodejs(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo
)
_generate_msg_nodejs(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo
)
_generate_msg_nodejs(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo
)

### Generating Services
_generate_srv_nodejs(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo
)

### Generating Module File
_generate_module_nodejs(ros_demo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_demo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_demo_generate_messages ros_demo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_nodejs _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_nodejs _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_nodejs _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_nodejs _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_nodejs _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv" NAME_WE)
add_dependencies(ros_demo_generate_messages_nodejs _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_nodejs _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_nodejs _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_nodejs _ros_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_demo_gennodejs)
add_dependencies(ros_demo_gennodejs ros_demo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_demo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo
)
_generate_msg_py(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo
)
_generate_msg_py(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo
)
_generate_msg_py(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo
)
_generate_msg_py(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo
)
_generate_msg_py(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo
)
_generate_msg_py(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg;/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo
)
_generate_msg_py(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo
)

### Generating Services
_generate_srv_py(ros_demo
  "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo
)

### Generating Module File
_generate_module_py(ros_demo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_demo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_demo_generate_messages ros_demo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionResult.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_py _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/msg/gps.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_py _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishGoal.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_py _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionGoal.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_py _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishResult.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_py _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/srv/add.srv" NAME_WE)
add_dependencies(ros_demo_generate_messages_py _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishActionFeedback.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_py _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishAction.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_py _ros_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/devel/share/ros_demo/msg/dishFeedback.msg" NAME_WE)
add_dependencies(ros_demo_generate_messages_py _ros_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_demo_genpy)
add_dependencies(ros_demo_genpy ros_demo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_demo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_demo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_demo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(ros_demo_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_demo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_demo_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(ros_demo_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_demo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_demo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(ros_demo_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_demo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_demo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(ros_demo_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_demo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_demo_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(ros_demo_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
