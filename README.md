marti\_messages ![CI](https://github.com/swri-robotics/marti_messages/workflows/CI/badge.svg) ![CI](https://github.com/swri-robotics/marti_messages/workflows/CI/badge.svg?branch=dashing-devel)
=============================================================================================

This repository provides various messages created at [Southwest Reseach Institute](http://www.swri.org)'s [Intelligent Systems](https://www.swri.org/technical-divisions/intelligent-systems) section for working with [Robot Operating System(ROS)](http://www.ros.org).

The `master` branch provides support for ROS Noetic; the `ros2-devel` branch provides support for current ROS 2 distributions.

Installation
------------

If you have installed ROS, you can install any of the packages in this repository with apt-get:

    sudo apt-get install ros-${ROS_DISTRO}-<package>


Building From Source (ROS Dashing, Eloquent)
-------------------------------------------------------

These directions assume you have already set up a colcon workspace

### Checking out the source code

If you're using wstool, add this repository to your workspace:

    git clone -b dashing-devel https://github.com/swri-robotics/marti_messages.git

### Installing dependencies and building

Install all of the dependencies using rosdep by running the following command from the root of your colcon workspace:

    rosdep install . -y --from-paths -i

Read the [Colcon Tutorial](https://index.ros.org//doc/ros2/Tutorials/Colcon-Tutorial/) for more information.
