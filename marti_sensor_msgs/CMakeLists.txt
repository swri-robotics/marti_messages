cmake_minimum_required(VERSION 2.4.6)
project(marti_sensor_msgs)

find_package(catkin REQUIRED 
  message_generation
  geometry_msgs
  build_tools)

add_message_files(FILES
  DoiPortState.msg
  DoiRealTimeData.msg
  Exposure.msg
  Gyro.msg
  Velocity.msg
  WheelEncoder.msg
  WheelEncoderSet.msg
)

add_service_files(FILES
  SetExposure.srv
)

generate_messages(DEPENDENCIES
  geometry_msgs)

catkin_package(
  CATKIN_DEPENDS 
    message_runtime
    geometry_msgs
)

execute_process(
  COMMAND rospack find build_tools
  ERROR_VARIABLE __null
  OUTPUT_VARIABLE build_tools_PACKAGE_PATH
  OUTPUT_STRIP_TRAILING_WHITESPACE)
include(${build_tools_PACKAGE_PATH}/scripts/build_common.cmake)
