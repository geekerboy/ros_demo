
#include <ros/ros.h>
#include <serial/serial.h>
#include <iostream>
#include <ctime>
#include "ros_demo/uwb.h"

int main(int argc, char** argv) {
		ros::init(argc, argv, "serial_port");
		ros::NodeHandle n;

		ros::Publisher uwb_pub=n.advertise<ros_demo::uwb>("uwb_pos",1);
		ros_demo::uwb uwb_pos;
		//创建一个serial类
		serial::Serial ser;
		//创建timeout
		serial::Timeout time_out = serial::Timeout::simpleTimeout(1);
		ser.setPort("/dev/uwb_serial");
		ser.setBaudrate(115200);
		ser.setTimeout(time_out);

		try {
				ser.open();
		} catch (serial::IOException &E) {
				ROS_ERROR_STREAM("Unable to open port.");
				std::cout<<E.what()<<std::endl;
				return -1;
		}

		if (ser.isOpen()) {
				ROS_INFO("port open successfully!");
		} else {
				ROS_INFO("port open failed!");
				return -1;
		}

		ros::Rate loop_rate(1500);
		while (ros::ok()) {
				clock_t start,end;
				double  duration;
				start=clock();
				//获取缓冲区内的字节数
				size_t n = ser.available();
				uwb_pos.stamp=ros::Time::now();
				// uwb前2个字节(uint16)是x,接下来两个是y,再两个是yaw,一共22个字节,即176大小
				if (n != 0) {
						uint8_t buffer[1024];
						//读出数据
						n = ser.read(buffer, n);

						for (int i = 0; i < n; i++) {
								uwb_pos.x=(float)(buffer[1]<<8|buffer[0])/100; //cm->m
								uwb_pos.y=(float)(buffer[3]<<8|buffer[2])/100;
								uwb_pos.yaw=(float)(buffer[5]<<8|buffer[4])/100;
						}
						ROS_INFO("real pos [x:%f],[y:%f],[yaw:%f]",uwb_pos.x,uwb_pos.y,uwb_pos.yaw);

						duration=(double)(clock()-start);
						std::cout<<"cost ["<<duration<<"] ms"<<std::endl;
						uwb_pub.publish(uwb_pos);
				}

//				loop_rate.sleep();

		}
		return 0;
}
