cmake_minimum_required(VERSION 3.10)
project(marti_introspection_msgs)

set(CMAKE_CXX_STANDARD 14)

set(MSG_DEPS
  std_msgs
)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

set(MSG_FILES
  msg/NodeInfo.msg
  msg/ParamInfo.msg
  msg/ServiceInfo.msg
  msg/TopicInfo.msg
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSG_FILES}
  DEPENDENCIES ${MSG_DEPS}
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
