cmake_minimum_required(VERSION 2.8.3)
project(ros_demo)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
	roscpp
    rospy
    std_msgs
    message_generation
    actionlib_msgs
    actionlib
	dynamic_reconfigure
		serial


)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

## To declare and build messages, services or actions from within this
## package, follow these steps:
## * Let MSG_DEP_SET be the set of packages whose message types you use in
##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).
## * In the file package.xml:
##   * add a build_depend tag for "message_generation"
##   * add a build_depend and a exec_depend tag for each package in MSG_DEP_SET
##   * If MSG_DEP_SET isn't empty the following dependency has been pulled in
##     but can be declared for certainty nonetheless:
##     * add a exec_depend tag for "message_runtime"
## * In this file (CMakeLists.txt):
##   * add "message_generation" and every package in MSG_DEP_SET to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * add "message_runtime" and every package in MSG_DEP_SET to
##     catkin_package(CATKIN_DEPENDS ...)
##   * uncomment the add_*_files sections below as needed
##     and list every .msg/.srv/.action file to be processed
##   * uncomment the generate_messages entry below
##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)

## Generate messages in the 'msg' folder
add_message_files(
        FILES
        gps.msg
		uwb.msg
)

## Generate services in the 'srv' folder
add_service_files(
        FILES
        add.srv
)

## Generate actions in the 'action' folder
add_action_files(
        #        DIRECTORY action
        FILES
        dish.action
)

## Generate added messages and services with any dependencies listed here
generate_messages(
        DEPENDENCIES
        std_msgs
        actionlib_msgs
)

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

## Generate dynamic reconfigure parameters in the 'cfg' folder
#generate_dynamic_reconfigure_options(
#        cfg/param_cfg.cfg
#)

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
        CATKIN_DEPENDS roscpp rospy std_msgs
        message_runtime actionlib_msgs serial
)


###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  ${catkin_INCLUDE_DIRS}

)

## Declare a C++ library
# add_library(${PROJECT_NAME}
#   src/${PROJECT_NAME}/ros_demo.cpp
# )
#添加add_dependencies确保生成头文件，头文件，头文件，不同通信方式不一样的哦
#包含的时候用"ros_demo/xx.h"的方式
#添加自己写的动态链接库　link必须在add_executable之前
#link_directories(
#		${catkin_LIB_DIRS} /usr/lib
#)
#添加自己写的动态链接库
add_executable(talker_node src/talker.cpp)
add_executable(listener_node src/listener.cpp)
add_executable(listener2_node src/listener2.cpp)
target_link_libraries(talker_node ${catkin_LIBRARIES} MathFunc)
#添加自己写的动态链接库   单独添加编译不通过，不通过，不通过
#target_link_libraries(talker_node MathFunc})
#添加自己写的动态链接库
target_link_libraries(listener_node ${catkin_LIBRARIES})
target_link_libraries(listener2_node ${catkin_LIBRARIES})
add_dependencies(talker_node ros_demo_generate_messages_cpp)
add_dependencies(listener_node ros_demo_generate_messages_cpp)
add_dependencies(listener2_node ros_demo_generate_messages_cpp)

add_executable(myserver src/add_server.cpp)
add_executable(myclient src/add_client.cpp)
target_link_libraries(myserver ${catkin_LIBRARIES})
target_link_libraries(myclient ${catkin_LIBRARIES})
add_dependencies(myserver ros_demo_gencpp)
add_dependencies(myclient ros_demo_gencpp)

add_executable(myaction_server src/action_server.cpp)
add_executable(myaction_client src/action_client.cpp)
target_link_libraries(myaction_server ${catkin_LIBRARIES})
target_link_libraries(myaction_client ${catkin_LIBRARIES})
add_dependencies(myaction_server ${${PROJECT_NAME}_EXPORTED_TARGETS})
add_dependencies(myaction_client ${${PROJECT_NAME}_EXPORTED_TARGETS})

add_executable(name_demo src/param.cpp)
target_link_libraries(name_demo ${catkin_LIBRARIES})
#add_dependencies(name_demo ${PROJECT_NAME}_gencfg)


add_executable(serial_port src/communication/serial_lib/serial_communication.cpp)
add_dependencies(serial_port ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(serial_port ${catkin_LIBRARIES})


#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
# install(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_executables.html
# install(TARGETS ${PROJECT_NAME}_node
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark libraries for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_libraries.html
# install(TARGETS ${PROJECT_NAME}
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_GLOBAL_BIN_DESTINATION}
# )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_ros_demo.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
