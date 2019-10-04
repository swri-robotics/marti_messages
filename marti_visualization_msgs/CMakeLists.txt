cmake_minimum_required(VERSION 3.10)
project(marti_visualization_msgs)

set(CMAKE_CXX_STANDARD 14)

set(MSG_DEPS
  builtin_interfaces
  geometry_msgs
  sensor_msgs
)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)

set(MSG_FILES
  msg/TexturedMarker.msg
  msg/TexturedMarkerArray.msg
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSG_FILES}
  DEPENDENCIES ${MSG_DEPS}
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()

