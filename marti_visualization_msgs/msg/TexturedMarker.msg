uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2

Header              header

string              ns
int32               id
int32               action
duration            lifetime

sensor_msgs/Image   image
geometry_msgs/Pose  pose
float64             resolution

float32             alpha
