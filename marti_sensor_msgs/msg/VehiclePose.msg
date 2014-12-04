# The VehiclePose message uses the following basic coordinate systems:

# Inertial axes (or body axes) - based about vehicle CG
# X axis - positive forward, through hood of vehicle
# Y axis - positive to right of X axis, perpendicular to X axis
# Z axis - positive upwards, perpendicular to X-Y plane

# Earth Axes
# X axis - positive in the direction of east
# Y axis - positive in the direction of north (perpendicular to X axis)
# Z axis - positive away from the center of Earth (perpendicular to X-Y plane)

Header header

# The x, y, z position of the vehicle in a Cartesian frame (meters)
geometry_msgs/Point pos

# Vehicle orientation (radians)
Attitude orient

# Row-major representation of the 3x3 covariance matrix
# In order, the parameters are: (x, y, z)
float64[9] pos_cov

# Row-major representation of the 3x3 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are: (rotation about X axis, rotation about Y axis, 
# rotation about Z axis)
float64[9] orient_cov
