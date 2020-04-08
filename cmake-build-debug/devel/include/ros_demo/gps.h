// Generated by gencpp from file ros_demo/gps.msg
// DO NOT EDIT!


#ifndef ROS_DEMO_MESSAGE_GPS_H
#define ROS_DEMO_MESSAGE_GPS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_demo
{
template <class ContainerAllocator>
struct gps_
{
  typedef gps_<ContainerAllocator> Type;

  gps_()
    : x(0.0)
    , y(0.0)
    , num(0)
    , state()  {
    }
  gps_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , num(0)
    , state(_alloc)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef int32_t _num_type;
  _num_type num;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::ros_demo::gps_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_demo::gps_<ContainerAllocator> const> ConstPtr;

}; // struct gps_

typedef ::ros_demo::gps_<std::allocator<void> > gps;

typedef boost::shared_ptr< ::ros_demo::gps > gpsPtr;
typedef boost::shared_ptr< ::ros_demo::gps const> gpsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_demo::gps_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_demo::gps_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_demo::gps_<ContainerAllocator1> & lhs, const ::ros_demo::gps_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.num == rhs.num &&
    lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_demo::gps_<ContainerAllocator1> & lhs, const ::ros_demo::gps_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_demo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_demo::gps_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_demo::gps_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_demo::gps_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_demo::gps_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_demo::gps_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_demo::gps_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_demo::gps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c337e84ebf36296c2fe045d4aa920a78";
  }

  static const char* value(const ::ros_demo::gps_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc337e84ebf36296cULL;
  static const uint64_t static_value2 = 0x2fe045d4aa920a78ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_demo::gps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_demo/gps";
  }

  static const char* value(const ::ros_demo::gps_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_demo::gps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"#topic_demo \n"
"\n"
"float32 x\n"
"float32 y\n"
"int32 num\n"
"string state\n"
;
  }

  static const char* value(const ::ros_demo::gps_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_demo::gps_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.num);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct gps_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_demo::gps_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_demo::gps_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num);
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_DEMO_MESSAGE_GPS_H
