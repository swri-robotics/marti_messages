cmake_minimum_required(VERSION 2.4.6)
project(marti_nav_msgs)

find_package(catkin REQUIRED 
  message_generation
  std_msgs
  build_tools)

add_message_files(FILES
  Command.msg
  LeadVehicle.msg
  PathPlanning.msg
  TeleopState.msg
  VehicleControl.msg
)

generate_messages(DEPENDENCIES std_msgs)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs
)

execute_process(
  COMMAND rospack find build_tools
  ERROR_VARIABLE __null
  OUTPUT_VARIABLE build_tools_PACKAGE_PATH
  OUTPUT_STRIP_TRAILING_WHITESPACE)
include(${build_tools_PACKAGE_PATH}/scripts/build_common.cmake)
