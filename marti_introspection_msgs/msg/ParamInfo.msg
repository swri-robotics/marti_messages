# This message contains documentation data about a parameter in a node
uint8 TYPE_XMLRPC=0
uint8 TYPE_DOUBLE=1
uint8 TYPE_STRING=2
uint8 TYPE_INT=3
uint8 TYPE_FLOAT=4
uint8 TYPE_BOOL=5

# The internal name of the parameter
string name

# The external, global name of the parameter
string resolved_name

# A description of the parameter and what it does
string description

# Used to group related components
string group

# The type of parameter using the enums above
uint8 type

# If the parameter is dynamic or not
bool dynamic

# Default values
int32 default_int
float32 default_float
float64 default_double
string default_string
bool default_bool

# Max and minimum values (may have rounding issues)
# Unused if both are 0.0
float64 max_value
float64 min_value
