// Generated by gencpp from file beginner_turtorials/AddTwoInts.msg
// DO NOT EDIT!


#ifndef BEGINNER_TURTORIALS_MESSAGE_ADDTWOINTS_H
#define BEGINNER_TURTORIALS_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <beginner_turtorials/AddTwoIntsRequest.h>
#include <beginner_turtorials/AddTwoIntsResponse.h>


namespace beginner_turtorials
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace beginner_turtorials


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beginner_turtorials::AddTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::beginner_turtorials::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::beginner_turtorials::AddTwoInts > {
  static const char* value()
  {
    return "beginner_turtorials/AddTwoInts";
  }

  static const char* value(const ::beginner_turtorials::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::beginner_turtorials::AddTwoIntsRequest> should match 
// service_traits::MD5Sum< ::beginner_turtorials::AddTwoInts > 
template<>
struct MD5Sum< ::beginner_turtorials::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::beginner_turtorials::AddTwoInts >::value();
  }
  static const char* value(const ::beginner_turtorials::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::beginner_turtorials::AddTwoIntsRequest> should match 
// service_traits::DataType< ::beginner_turtorials::AddTwoInts > 
template<>
struct DataType< ::beginner_turtorials::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::beginner_turtorials::AddTwoInts >::value();
  }
  static const char* value(const ::beginner_turtorials::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beginner_turtorials::AddTwoIntsResponse> should match 
// service_traits::MD5Sum< ::beginner_turtorials::AddTwoInts > 
template<>
struct MD5Sum< ::beginner_turtorials::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::beginner_turtorials::AddTwoInts >::value();
  }
  static const char* value(const ::beginner_turtorials::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::beginner_turtorials::AddTwoIntsResponse> should match 
// service_traits::DataType< ::beginner_turtorials::AddTwoInts > 
template<>
struct DataType< ::beginner_turtorials::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::beginner_turtorials::AddTwoInts >::value();
  }
  static const char* value(const ::beginner_turtorials::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEGINNER_TURTORIALS_MESSAGE_ADDTWOINTS_H
