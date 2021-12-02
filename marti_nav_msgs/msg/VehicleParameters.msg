# Set of parameters that describe the motion parameters of a vehicle

# Vehicle's maximum curvature in 1/meters. Should be positive.
float32 max_curvature

# Vehicle's minimum curvature in 1/meters. Should be negative
float32 min_curvature

# Vehicle's maximum allowed lateral acceleration in m/s^2
float32 max_lateral_acceleration

# Vehicle's target lateral acceleration in m/s^2. May be exceeded by vehicle
float32 target_lateral_acceleration

# Vehicle's maximum allowed linear acceleration in m/s^2
float32 max_acceleration

# Vehicle's target linear acceleration in m/s^2
float32 target_acceleration

# Vehicle's maximum linear deceleration in m/s^s. May be exceeded by vehicle
float32 max_deceleration

# Vehicle's target linear deceleration in m/s^2
float32 target_deceleration

# Vehicle's linear acceleration in m/s^2 when stopping at the end of a path segment
float32 stop_deceleration
