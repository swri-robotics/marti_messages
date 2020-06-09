cmake_minimum_required(VERSION 3.10)
project(marti_dbw_msgs)

set(CMAKE_CXX_STANDARD 14)

set(MSG_DEPS 
  builtin_interfaces 
  std_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(std_msgs REQUIRED)

### Message Generation ###
set(MSG_FILES
  msg/PrimaryControl.msg
  msg/PrimaryFeedback.msg
  msg/TransmissionFeedback.msg)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSG_FILES}
  DEPENDENCIES ${MSG_DEPS}
)

install(DIRECTORY include/
  DESTINATION include
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()

