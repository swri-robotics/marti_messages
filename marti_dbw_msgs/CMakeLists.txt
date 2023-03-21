cmake_minimum_required(VERSION 3.10)
project(marti_dbw_msgs)

# Default to C++ version appropriate for the ROS distribution
if(NOT CMAKE_CXX_STANDARD)
  if ("$ENV{ROS_DISTRO}" STRGREATER "foxy")
    set(CMAKE_CXX_STANDARD 17)
  else()
    set(CMAKE_CXX_STANDARD 14)
  endif()
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

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

if("$ENV{ROS_DISTRO}" STRGREATER "galactic")
  rosidl_get_typesupport_target(
    cpp_typesupport_target
    "${PROJECT_NAME}"
    "rosidl_typesupport_cpp")


  if(cpp_typesupport_target)
    add_library(${PROJECT_NAME}_library INTERFACE)
    target_include_directories(${PROJECT_NAME}_library INTERFACE
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>"
    "$<INSTALL_INTERFACE:include/${PROJECT_NAME}>")
    target_link_libraries(${PROJECT_NAME}_library INTERFACE
    "${cpp_typesupport_target}")

    install(DIRECTORY include/
      DESTINATION include/${PROJECT_NAME}
    )
    install(
      TARGETS ${PROJECT_NAME}_library EXPORT export_${PROJECT_NAME}
    )

    # Export old-style CMake variables
    ament_export_include_directories("include/${PROJECT_NAME}")

    # Export modern CMake targets
    ament_export_targets(export_${PROJECT_NAME})
  endif()
else()
  install(DIRECTORY include/${PROJECT_NAME}/
    DESTINATION include/${PROJECT_NAME}
  )
  ament_export_include_directories(include)
endif()

ament_export_dependencies(rosidl_default_runtime)

ament_package()
