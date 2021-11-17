cmake_minimum_required(VERSION 3.10.0)
project(marti_introspection_msgs)

set(CMAKE_CXX_STANDARD 14)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)

set(MSG_FILES
  msg/NodeInfo.msg
  msg/ParamInfo.msg
  msg/TopicInfo.msg
  msg/ServiceInfo.msg
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSG_FILES}
  DEPENDENCIES ${MSG_DEPS}
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()

