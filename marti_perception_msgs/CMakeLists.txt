cmake_minimum_required(VERSION 3.0.2)
project(marti_perception_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
  sensor_msgs)

add_message_files(FILES
  PedestrianImageID.msg
)

generate_messages(DEPENDENCIES
  std_msgs
  sensor_msgs)

catkin_package(
  CATKIN_DEPENDS 
    message_runtime
    std_msgs 
    sensor_msgs
)
