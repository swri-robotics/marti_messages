cmake_minimum_required(VERSION 3.10)
project(marti_nav_msgs)

set(CMAKE_CXX_STANDARD 14)

set(MSG_DEPS
  builtin_interfaces
  geographic_msgs
  geometry_msgs
  marti_common_msgs
  sensor_msgs
  std_msgs
)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(geographic_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(marti_common_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(std_msgs REQUIRED)

set(MSG_FILES
  msg/Command.msg
  msg/GridMap.msg
  msg/LeadVehicle.msg
  msg/Obstacle.msg
  msg/ObstacleArray.msg
  msg/PathPlanning.msg
  msg/Path.msg
  msg/PathPoint.msg
  msg/Route.msg
  msg/RouteArray.msg
  msg/RouteOffset.msg
  msg/RoutePoint.msg
  msg/RoutePosition.msg
  msg/RouteSpeed.msg
  msg/RouteSpeedArray.msg
  msg/TeleopState.msg
  msg/TrackedObject.msg
  msg/TrackedObjectArray.msg
  msg/VehicleControl.msg
  msg/Wgs84Sample.msg
  srv/DeleteRoute.srv
  srv/GetRoute.srv
  srv/GetRouteList.srv
  srv/PlanRoute.srv
  srv/SaveRecordedRoute.srv
  srv/SaveRoute.srv
  srv/SetRoute.srv
  srv/UpdateRouteMetadata.srv
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSG_FILES}
  DEPENDENCIES ${MSG_DEPS}
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()

