# The Attitude message uses the following basic coordinate systems:

# Inertial axes (or body axes) - based about vehicle CG
# X axis - positive forward, through hood of vehicle
# Y axis - positive to right of X axis, perpendicular to X axis
# Z axis - positive upwards, perpendicular to X-Y plane

# Earth Axes
# X axis - positive in the direction of east
# Y axis - positive in the direction of north (perpendicular to X axis)
# Z axis - positive away from the center of Earth (perpendicular to X-Y plane)

# Angle of X body axis relative to horizon.  (radians) 
# Positive (nose up) rotation about Y body axis.
float64 pitch

# Angle of Y body axis relative to horizon.  (radians)
# Positive (right side down) rotation about X body axis.
float64 roll

 # Angle of X body axis relative to East.    (radians)
 # Positive rotation about Z body axis (toward North).
float64 yaw
