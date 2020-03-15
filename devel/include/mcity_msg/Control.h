// Generated by gencpp from file mcity_msg/Control.msg
// DO NOT EDIT!


#ifndef MCITY_MSG_MESSAGE_CONTROL_H
#define MCITY_MSG_MESSAGE_CONTROL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mcity_msg
{
template <class ContainerAllocator>
struct Control_
{
  typedef Control_<ContainerAllocator> Type;

  Control_()
    : timestamp(0.0)
    , count(0)
    , brake_cmd(0.0)
    , throttle_cmd(0.0)
    , steering_cmd(0.0)
    , gear_cmd(0)
    , turn_signal_cmd(0)  {
    }
  Control_(const ContainerAllocator& _alloc)
    : timestamp(0.0)
    , count(0)
    , brake_cmd(0.0)
    , throttle_cmd(0.0)
    , steering_cmd(0.0)
    , gear_cmd(0)
    , turn_signal_cmd(0)  {
  (void)_alloc;
    }



   typedef double _timestamp_type;
  _timestamp_type timestamp;

   typedef int32_t _count_type;
  _count_type count;

   typedef double _brake_cmd_type;
  _brake_cmd_type brake_cmd;

   typedef double _throttle_cmd_type;
  _throttle_cmd_type throttle_cmd;

   typedef double _steering_cmd_type;
  _steering_cmd_type steering_cmd;

   typedef int16_t _gear_cmd_type;
  _gear_cmd_type gear_cmd;

   typedef int16_t _turn_signal_cmd_type;
  _turn_signal_cmd_type turn_signal_cmd;





  typedef boost::shared_ptr< ::mcity_msg::Control_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mcity_msg::Control_<ContainerAllocator> const> ConstPtr;

}; // struct Control_

typedef ::mcity_msg::Control_<std::allocator<void> > Control;

typedef boost::shared_ptr< ::mcity_msg::Control > ControlPtr;
typedef boost::shared_ptr< ::mcity_msg::Control const> ControlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mcity_msg::Control_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mcity_msg::Control_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mcity_msg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'mcity_msg': ['/home/weiyang/hybrid_rrt_planning/src/mcity_msg/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mcity_msg::Control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mcity_msg::Control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mcity_msg::Control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mcity_msg::Control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mcity_msg::Control_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mcity_msg::Control_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mcity_msg::Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8991eb8db72ef6936a21cd28b0eaadf3";
  }

  static const char* value(const ::mcity_msg::Control_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8991eb8db72ef693ULL;
  static const uint64_t static_value2 = 0x6a21cd28b0eaadf3ULL;
};

template<class ContainerAllocator>
struct DataType< ::mcity_msg::Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mcity_msg/Control";
  }

  static const char* value(const ::mcity_msg::Control_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mcity_msg::Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
float64 timestamp\n\
int32 	count\n\
float64 brake_cmd\n\
float64 throttle_cmd\n\
float64 steering_cmd\n\
int16 	gear_cmd\n\
int16 	turn_signal_cmd\n\
\n\
 \n\
";
  }

  static const char* value(const ::mcity_msg::Control_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mcity_msg::Control_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.timestamp);
      stream.next(m.count);
      stream.next(m.brake_cmd);
      stream.next(m.throttle_cmd);
      stream.next(m.steering_cmd);
      stream.next(m.gear_cmd);
      stream.next(m.turn_signal_cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Control_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mcity_msg::Control_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mcity_msg::Control_<ContainerAllocator>& v)
  {
    s << indent << "timestamp: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp);
    s << indent << "count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.count);
    s << indent << "brake_cmd: ";
    Printer<double>::stream(s, indent + "  ", v.brake_cmd);
    s << indent << "throttle_cmd: ";
    Printer<double>::stream(s, indent + "  ", v.throttle_cmd);
    s << indent << "steering_cmd: ";
    Printer<double>::stream(s, indent + "  ", v.steering_cmd);
    s << indent << "gear_cmd: ";
    Printer<int16_t>::stream(s, indent + "  ", v.gear_cmd);
    s << indent << "turn_signal_cmd: ";
    Printer<int16_t>::stream(s, indent + "  ", v.turn_signal_cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MCITY_MSG_MESSAGE_CONTROL_H
