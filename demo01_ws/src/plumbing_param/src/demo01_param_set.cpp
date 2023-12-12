#include "ros/ros.h"

/*
    参数服务器操作之新增与修改(二者API一样)_C++实现:
    在 roscpp 中提供了两套 API 实现参数操作
    ros::NodeHandle
        setParam("键",值)
    ros::param
        set("键","值")

    示例:分别设置整形、浮点、字符串、bool、列表、字典等类型参数
        修改(相同的键，不同的值)

*/
int main(int argc, char* argv[])
{
    ros::init(argc, argv, "set_param");
    std::vector<std::string> stus;
    stus.push_back("a");
    stus.push_back("长孙");
    stus.push_back("岁的发送");
    stus.push_back("111");
    stus.push_back("a");

    std::map<std::string,std::string> mmap;
    mmap["guo"] = "zzz";
    mmap["yuang"] = "xxx";

    //NodeHandle--------------------------------------------------------
    ros::NodeHandle nh;
    nh.setParam("nh_int",10); //整型
    nh.setParam("nh_double",3.14); //浮点型
    nh.setParam("nh_bool",true); //bool
    nh.setParam("nh_string","hello NodeHandle"); //字符串
    nh.setParam("nh_vector",stus); // vector
    nh.setParam("nh_map",mmap); // map

    //修改演示(相同的键，不同的值)
    nh.setParam("nh_int",10000);

    //param--------------------------------------------------------
    ros::param::set("param_int",20);
    ros::param::set("param_double",3.14);
    ros::param::set("param_string","Hello Param");
    ros::param::set("param_bool",false);
    ros::param::set("param_vector",stus);
    ros::param::set("param_map",mmap);

    //修改演示(相同的键，不同的值)
    ros::param::set("param_int",20000);
   

    return 0;
}