# Gives a position and orientation relative to a position on a plan. Published by position trackers.

std_msgs/Header header                      # only stamp used

string plan_id                              # unique ID of the corresponding plan
geometry_msgs/Pose relative_pose            # pose relative to position on plan
marti_nav_msgs/PlanPosition plan_position   # position on plan
