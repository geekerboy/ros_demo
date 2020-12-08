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
#### 串口通信
* 参考[链接](https://blog.csdn.net/u014695839/article/details/81209082)
* 上面参考xml文件没有对应修改，艹，找到[这个](http://stevenshi.me/2017/05/17/ros-serial/)解决了
* 打开串口IO Exception (13): Permission denied报错
* 参考[串口映射](https://blog.csdn.net/qq_41925420/article/details/90690512)不行啊
* 不是不行，后面syslink搞成小写了，死活不对，[这个解析](https://blog.csdn.net/zong596568821xp/article/details/78579734)更全面