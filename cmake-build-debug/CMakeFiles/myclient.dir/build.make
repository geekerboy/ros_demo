# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2019.3.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2019.3.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/geeker/test_file/ros_test/src/ros_demo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/myclient.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/myclient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/myclient.dir/flags.make

CMakeFiles/myclient.dir/src/add_client.cpp.o: CMakeFiles/myclient.dir/flags.make
CMakeFiles/myclient.dir/src/add_client.cpp.o: ../src/add_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/myclient.dir/src/add_client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myclient.dir/src/add_client.cpp.o -c /home/geeker/test_file/ros_test/src/ros_demo/src/add_client.cpp

CMakeFiles/myclient.dir/src/add_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myclient.dir/src/add_client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/geeker/test_file/ros_test/src/ros_demo/src/add_client.cpp > CMakeFiles/myclient.dir/src/add_client.cpp.i

CMakeFiles/myclient.dir/src/add_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myclient.dir/src/add_client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/geeker/test_file/ros_test/src/ros_demo/src/add_client.cpp -o CMakeFiles/myclient.dir/src/add_client.cpp.s

# Object files for target myclient
myclient_OBJECTS = \
"CMakeFiles/myclient.dir/src/add_client.cpp.o"

# External object files for target myclient
myclient_EXTERNAL_OBJECTS =

devel/lib/ros_demo/myclient: CMakeFiles/myclient.dir/src/add_client.cpp.o
devel/lib/ros_demo/myclient: CMakeFiles/myclient.dir/build.make
devel/lib/ros_demo/myclient: /opt/ros/melodic/lib/libactionlib.so
devel/lib/ros_demo/myclient: /opt/ros/melodic/lib/libroscpp.so
devel/lib/ros_demo/myclient: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/ros_demo/myclient: /opt/ros/melodic/lib/librosconsole.so
devel/lib/ros_demo/myclient: /opt/ros/melodic/lib/librosconsole_log4cxx.so
devel/lib/ros_demo/myclient: /opt/ros/melodic/lib/librosconsole_backend_interface.so
devel/lib/ros_demo/myclient: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/ros_demo/myclient: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/ros_demo/myclient: /opt/ros/melodic/lib/libxmlrpcpp.so
devel/lib/ros_demo/myclient: /opt/ros/melodic/lib/libdynamic_reconfigure_config_init_mutex.so
devel/lib/ros_demo/myclient: /opt/ros/melodic/lib/libroscpp_serialization.so
devel/lib/ros_demo/myclient: /opt/ros/melodic/lib/librostime.so
devel/lib/ros_demo/myclient: /opt/ros/melodic/lib/libcpp_common.so
devel/lib/ros_demo/myclient: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/ros_demo/myclient: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/ros_demo/myclient: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
devel/lib/ros_demo/myclient: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/ros_demo/myclient: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
devel/lib/ros_demo/myclient: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/ros_demo/myclient: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/ros_demo/myclient: CMakeFiles/myclient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable devel/lib/ros_demo/myclient"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myclient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/myclient.dir/build: devel/lib/ros_demo/myclient

.PHONY : CMakeFiles/myclient.dir/build

CMakeFiles/myclient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/myclient.dir/cmake_clean.cmake
.PHONY : CMakeFiles/myclient.dir/clean

CMakeFiles/myclient.dir/depend:
	cd /home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/geeker/test_file/ros_test/src/ros_demo /home/geeker/test_file/ros_test/src/ros_demo /home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug /home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug /home/geeker/test_file/ros_test/src/ros_demo/cmake-build-debug/CMakeFiles/myclient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/myclient.dir/depend

