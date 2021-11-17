# This message contains documentation data about a service client/server in a node

# The internal name of the service
string name

# The external, global name of the service
string resolved_name

# A human readable description of the service and how to use it
string description

# Used to group related components
string group

# The name of the message type
string message_type

# If this is a service server, otherwise it is a service client
bool server

# Indicates if this is a topic service rather than a true service
bool topic_service
