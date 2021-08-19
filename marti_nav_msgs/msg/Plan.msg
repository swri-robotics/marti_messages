# This message represents a plan along a roadway
std_msgs/Header                header

# List of points in the plan
PlanPoint[]                    points

# Location for placing custom per point properties
# Used for unusual things such as intersections or crosswalks
PlanPointProperty[]            point_properties

# Per route details
string id
marti_common_msgs/KeyValue[]   properties
