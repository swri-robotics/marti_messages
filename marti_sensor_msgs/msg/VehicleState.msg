# The VehicleState message uses the following basic coordinate systems:

# Inertial axes (or body axes) - based about vehicle CG
# X axis - positive forward, through hood of vehicle
# Y axis - positive to right of X axis, perpendicular to X axis
# Z axis - positive upwards, perpendicular to X-Y plane

# Earth Axes
# X axis - positive in the direction of east
# Y axis - positive in the direction of north (perpendicular to X axis)
# Z axis - positive away from the center of Earth (perpendicular to X-Y plane)

Header header

# The Pose of the vehicle (position and attitude)
VehiclePose pose

# The forward velocity of the vehicle (m/s)
float64 velocity

