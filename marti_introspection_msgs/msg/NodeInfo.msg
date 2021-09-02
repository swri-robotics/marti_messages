# This message contains documentation data about a specific node

# The fully qualified node name
string name

# The location the node handle is constructed
string location

# The name of the nodelet manager this is running in, if any
string nodelet_manager

# A human readable description of the node
string description

# A list of each topic used in the node
TopicInfo[] topics

# A list of each parameter used in the node
ParamInfo[] parameters

# A list of each service used in the node
ServiceInfo[] services
