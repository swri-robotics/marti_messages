# Position and heading for this point in the plan
float64 x
float64 y
float64 z
float64 yaw

# Maximum speed in meters per second
float32 speed

# Road details for this point in the plan
# Set to < 0 to mark as invalid
int64 lane_id
int64 segment_id

int32 FLAG_REVERSE = 1
int32 FLAG_STOP_POINT = 2

# Bitmask of common per point boolean flags
int32 flags
