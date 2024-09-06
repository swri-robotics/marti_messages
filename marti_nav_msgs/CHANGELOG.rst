^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package marti_nav_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Forthcoming
-----------

1.6.0 (2024-08-09)
------------------
* Updating CI for Rolling and Jazzy. No functional changes.
* Contributors: David Anthony

1.5.2 (2023-11-03)
------------------

1.5.1 (2023-09-11)
------------------

1.5.0 (2023-08-22)
------------------
* Adding cost to route message (`#129 <https://github.com/swri-robotics/marti_messages/issues/129>`_)
* Contributors: David Anthony

1.4.1 (2023-05-03)
------------------

1.2.0 (2020-11-19)
------------------
* Add path message (`#109 <https://github.com/swri-robotics/marti_messages/issues/109>`_) (`#111 <https://github.com/swri-robotics/marti_messages/issues/111>`_)
* Contributors: Matthew Bries, P. J. Reed

1.1.0 (2020-06-10)
------------------

1.0.0 (2019-10-04)
------------------
* Convert to ROS2 Dashing
* Contributors: P. J. Reed

0.8.0 (2018-10-19)
------------------

0.7.0 (2018-10-09)
------------------
* Add RouteArray.msg file
* Contributors: Daniel-Stanek, P. J. Reed

0.6.0 (2018-05-24)
------------------
* Include route id with route position for disambiguation.
* Contributors: Marc Alban, P. J. Reed

0.5.0 (2018-04-05)
------------------

0.4.0 (2017-11-08)
------------------

0.3.0 (2017-09-28)
------------------

0.2.0 (2017-08-29)
------------------
* AddRouteOffset Message (`#86 <https://github.com/swri-robotics/marti_messages/issues/86>`_)
* Contributors: Matthew

0.1.0 (2017-08-15)
------------------

0.0.9 (2017-05-08)
------------------
* Add Wgs84Sample message type. (`#82 <https://github.com/swri-robotics/marti_messages/issues/82>`_)
  Wgs84Sample is a new message type that contains a sensor measurement in WGS-84 (e.g. GPS sample)
  and the corresponding sensor location in relative coordinates (e.g. antenna position).
* Contributors: Elliot Johnson

0.0.8 (2017-03-18)
------------------
* Add GridMap message.
* Contributors: Marc Alban

0.0.7 (2017-02-06)
------------------
* Add service to delete routes
* Add more detailed comments to TrackedObject.msg
* Add messages for tracked objects.
* Contributors: Marc Alban, P. J. Reed

0.0.6 (2016-10-23)
------------------

0.0.5 (2016-08-14)
------------------
* Adds new services to save a route and to update a route's metadata:

  - SaveRoute
  
    - Takes a list of route points and saves it
    - If the route's GUID matches an existing route, it will be overwritten
    
  - UpdateRouteMetadata
  
    - Modifies an existing route
    - Replaces the properties on specified points with new properties
    
* Adds Obstacle/ObstacleArray messages to marti_nav_msgs.
* Contributors: Elliot Johnson, P. J. Reed

0.0.4 (2016-05-20)
------------------
* Build PlanRoute service.
* Add marti_nav_msgs/RouteSpeedArray message.
* Adding a service for planning routes
  Resolves `#61 <https://github.com/swri-robotics/marti_messages/issues/61>`_
* Adding a service to set the currently active route
* Add services for getting routes.
* Add service definition for saving a recorded route.
* Contributors: Elliot Johnson, Marc Alban, P. J. Reed

0.0.3 (2016-03-11)
------------------
* Adds RouteSpeed message.
* Contributors: Marc Alban

0.0.2 (2016-03-04)
------------------
* Adds Route, RoutePoint, and RoutePosition messages
  Route and RoutePoint are very general messages to define a sequence of
  achievable poses for a vehicle along with arbitrary metadata about the
  route and the point itself.
* Contributors: Jerry Towler

0.0.1 (2015-09-22)
------------------
* Fixing catkin_lint problems that could prevent installation.
* update cmake version to squash the CMP0003 warning
* remove dependencies on build_tools
* use format 2 package definition
* build fixes for catkin
* catkinize marti_messages
* Create README.md
* Contributors: Marc Alban, P. J. Reed
