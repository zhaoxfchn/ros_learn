#include "ros/ros.h"
#include "plumbing_server_client/add_init.h"
/*
    服务器实现:
        1.包含头文件
        2.初始化 ROS 节点
        3.创建 ROS 句柄
        4.创建 服务 对象
        5.回调函数处理请求并产生响应
        6.由于请求有多个，需要调用 ros::spin()
*/
bool doNums(plumbing_server_client::add_init::Request &request, 
            plumbing_server_client::add_init::Response &response)
{
    int num1 = request.num1;
    int num2 = request.num2;
    ROS_INFO("服务端接受的请求数据 %d, %d", num1, num2);
    //逻辑处理，这里需求不能为负数
    if(num1<0 || num2 <0)
    {
        ROS_ERROR("坏了，服务端收的不对！！");
        return false;
    }
    //
    response.sum = num1 + num2;

    return true;
}
int main(int argc, char  *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc, argv, "server");

    ros::NodeHandle nh;

    ros::ServiceServer server = nh.advertiseService("addInts", doNums);
    ROS_INFO("服务已经启动....");
    //由于请求有多个，需要调用 ros::spin()
    ros::spin();
    return 0;
}