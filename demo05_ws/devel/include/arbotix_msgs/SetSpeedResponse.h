// Generated by gencpp from file arbotix_msgs/SetSpeedResponse.msg
// DO NOT EDIT!


#ifndef ARBOTIX_MSGS_MESSAGE_SETSPEEDRESPONSE_H
#define ARBOTIX_MSGS_MESSAGE_SETSPEEDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arbotix_msgs
{
template <class ContainerAllocator>
struct SetSpeedResponse_
{
  typedef SetSpeedResponse_<ContainerAllocator> Type;

  SetSpeedResponse_()
    {
    }
  SetSpeedResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetSpeedResponse_

typedef ::arbotix_msgs::SetSpeedResponse_<std::allocator<void> > SetSpeedResponse;

typedef boost::shared_ptr< ::arbotix_msgs::SetSpeedResponse > SetSpeedResponsePtr;
typedef boost::shared_ptr< ::arbotix_msgs::SetSpeedResponse const> SetSpeedResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace arbotix_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arbotix_msgs/SetSpeedResponse";
  }

  static const char* value(const ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetSpeedResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::arbotix_msgs::SetSpeedResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ARBOTIX_MSGS_MESSAGE_SETSPEEDRESPONSE_H
