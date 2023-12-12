#include "ros/ros.h"
#include "plumbing_server_client/add_init.h"

/*
    需求: 
        编写两个节点实现服务通信，客户端节点需要提交两个整数到服务器
        服务器需要解析客户端提交的数据，相加后，将结果响应回客户端，
        客户端再解析

    客户端实现:
        1.包含头文件
        2.初始化 ROS 节点
        3.创建 ROS 句柄
        4.创建 客户端 对象
        5.请求服务，接收响应

*/
int main(int argc, char* argv[])
{
    setlocale(LC_ALL,"");

    //获取参数
    if(argc != 3) 
    {
        ROS_ERROR("参数个数错误");
        return 1;
        
    }
    ros::init(argc, argv, "client");
    ros::NodeHandle nh;

    ros::ServiceClient client =  nh.serviceClient<plumbing_server_client::add_init>("addInts");

    //等待服务启动成功
    ros::service::waitForService("addInts");
    // client.waitForExistence();  //另一种方法
    //动态参数
    plumbing_server_client::add_init ai;
    ai.request.num1 = atoi(argv[1]);
    ai.request.num2 = atoi(argv[2]);

    //处理响应
    bool flag = client.call(ai);
    if(flag)  ROS_INFO("客户端请求成功，结果%d", ai.response.sum);
    else      ROS_INFO("客户端请求失败");
    return 0;
}
