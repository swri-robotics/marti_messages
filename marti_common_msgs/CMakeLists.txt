cmake_minimum_required(VERSION 3.10)
project(marti_common_msgs)

set(CMAKE_CXX_STANDARD 14)

set(MSG_DEPS 
  builtin_interfaces
  std_msgs
)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(std_msgs REQUIRED)

set(MSG_FILES
  msg/BoolStamped.msg
  msg/ByteArrayStamped.msg
  msg/DurationStamped.msg
  msg/Float32Stamped.msg
  msg/Float64Stamped.msg
  msg/HealthStatus.msg
  msg/Int16Stamped.msg
  msg/Int32Stamped.msg
  msg/Int64Stamped.msg
  msg/Int8Stamped.msg
  msg/KeyValue.msg
  msg/KeyValueArray.msg
  msg/Matrix3x3Stamped.msg
  msg/ServiceHeader.msg
  msg/StringArrayStamped.msg
  msg/StringStamped.msg
  msg/TimeStamped.msg
  msg/UInt16Stamped.msg
  msg/UInt32Stamped.msg
  msg/UInt64Stamped.msg
  msg/UInt8Stamped.msg
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSG_FILES}
  DEPENDENCIES ${MSG_DEPS}
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()

