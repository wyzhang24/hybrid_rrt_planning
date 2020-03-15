// Generated by gencpp from file dbw_mkz_msgs/GearNum.msg
// DO NOT EDIT!


#ifndef DBW_MKZ_MSGS_MESSAGE_GEARNUM_H
#define DBW_MKZ_MSGS_MESSAGE_GEARNUM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dbw_mkz_msgs
{
template <class ContainerAllocator>
struct GearNum_
{
  typedef GearNum_<ContainerAllocator> Type;

  GearNum_()
    : num(0)  {
    }
  GearNum_(const ContainerAllocator& _alloc)
    : num(0)  {
  (void)_alloc;
    }



   typedef uint8_t _num_type;
  _num_type num;



  enum {
    NONE = 0u,
    DRIVE_D01 = 1u,
    DRIVE_D02 = 2u,
    DRIVE_D03 = 3u,
    DRIVE_D04 = 4u,
    DRIVE_D05 = 5u,
    DRIVE_D06 = 6u,
    DRIVE_D07 = 7u,
    DRIVE_D08 = 8u,
    DRIVE_D09 = 9u,
    DRIVE_D10 = 10u,
    NEUTRAL = 16u,
    REVERSE_R01 = 17u,
    REVERSE_R02 = 18u,
    PARK = 31u,
  };


  typedef boost::shared_ptr< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> const> ConstPtr;

}; // struct GearNum_

typedef ::dbw_mkz_msgs::GearNum_<std::allocator<void> > GearNum;

typedef boost::shared_ptr< ::dbw_mkz_msgs::GearNum > GearNumPtr;
typedef boost::shared_ptr< ::dbw_mkz_msgs::GearNum const> GearNumConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dbw_mkz_msgs::GearNum_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dbw_mkz_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dbw_mkz_msgs': ['/home/weiyang/hybrid_rrt_planning/src/dbw_mkz_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> >
{
  static const char* value()
  {
    return "796cf18912e88e9df4c9f138d09f2700";
  }

  static const char* value(const ::dbw_mkz_msgs::GearNum_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x796cf18912e88e9dULL;
  static const uint64_t static_value2 = 0xf4c9f138d09f2700ULL;
};

template<class ContainerAllocator>
struct DataType< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dbw_mkz_msgs/GearNum";
  }

  static const char* value(const ::dbw_mkz_msgs::GearNum_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 num\n\
\n\
uint8 NONE=0\n\
uint8 DRIVE_D01=1\n\
uint8 DRIVE_D02=2\n\
uint8 DRIVE_D03=3\n\
uint8 DRIVE_D04=4\n\
uint8 DRIVE_D05=5\n\
uint8 DRIVE_D06=6\n\
uint8 DRIVE_D07=7\n\
uint8 DRIVE_D08=8\n\
uint8 DRIVE_D09=9\n\
uint8 DRIVE_D10=10\n\
uint8 NEUTRAL=16\n\
uint8 REVERSE_R01=17\n\
uint8 REVERSE_R02=18\n\
uint8 PARK=31\n\
";
  }

  static const char* value(const ::dbw_mkz_msgs::GearNum_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GearNum_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dbw_mkz_msgs::GearNum_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dbw_mkz_msgs::GearNum_<ContainerAllocator>& v)
  {
    s << indent << "num: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DBW_MKZ_MSGS_MESSAGE_GEARNUM_H