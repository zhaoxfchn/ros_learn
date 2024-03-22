# Install script for directory: /home/zhaoxf/motion-plan/demo05_ws/src/arbotix_ros/arbotix_controllers

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zhaoxf/motion-plan/demo05_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zhaoxf/motion-plan/demo05_ws/build/arbotix_ros/arbotix_controllers/catkin_generated/installspace/arbotix_controllers.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arbotix_controllers/cmake" TYPE FILE FILES
    "/home/zhaoxf/motion-plan/demo05_ws/build/arbotix_ros/arbotix_controllers/catkin_generated/installspace/arbotix_controllersConfig.cmake"
    "/home/zhaoxf/motion-plan/demo05_ws/build/arbotix_ros/arbotix_controllers/catkin_generated/installspace/arbotix_controllersConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arbotix_controllers" TYPE FILE FILES "/home/zhaoxf/motion-plan/demo05_ws/src/arbotix_ros/arbotix_controllers/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/arbotix_controllers" TYPE PROGRAM FILES
    "/home/zhaoxf/motion-plan/demo05_ws/src/arbotix_ros/arbotix_controllers/bin/gripper_controller"
    "/home/zhaoxf/motion-plan/demo05_ws/src/arbotix_ros/arbotix_controllers/bin/one_side_gripper_controller.py"
    "/home/zhaoxf/motion-plan/demo05_ws/src/arbotix_ros/arbotix_controllers/bin/parallel_gripper_controller.py"
    "/home/zhaoxf/motion-plan/demo05_ws/src/arbotix_ros/arbotix_controllers/bin/parallel_single_servo_controller.py"
    )
endif()

