# ros_demo
学习ros中的一些基础操作
### ros多机通信
* 按照以前摸索的路子来,就是连接不是,找到这个[参考](https://blog.csdn.net/Ocean_JH/article/details/89792567),
关闭[ufw](https://www.cnblogs.com/sweet521/p/5733466.html)
#### 主机
* export ROS_MASTER_URI=http://主机ip:11311
* export ROS_HOSTNAME=**主机ip**
#### 从机
* export ROS_MASTER_URI=http://主机ip:11311
* export ROS_HOSTNAME=**从机ip**
#### 功能更新
* 在talker中调用自己写的库文件(具体细节在CmakeList.txt中配置)