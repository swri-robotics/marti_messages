# This message contains documentation data about a service client/server in a node

string name
string resolved_name

string description

# The name of the message type
string message_type

# If this is a service server, otherwise it is a service client
bool server

# Indicates if this is a topic service rather than a true service
bool topic_service
