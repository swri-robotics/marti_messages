cmake_minimum_required(VERSION 3.10)
project(marti_sensor_msgs)

set(CMAKE_CXX_STANDARD 14)
set(MSG_DEPS geometry_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)

set(MSG_FILES
  msg/Altitude.msg
  msg/DifferentialMeasurement.msg
  msg/DioPortState.msg
  msg/DioRealTimeData.msg
  msg/Direction.msg
  msg/Exposure.msg
  msg/Gyro.msg
  msg/Velocity.msg
  msg/WheelEncoder.msg
  msg/WheelEncoderSet.msg
  srv/SetExposure.srv
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSG_FILES}
  DEPENDENCIES ${MSG_DEPS}
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()

