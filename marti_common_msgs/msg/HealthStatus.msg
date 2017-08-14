int8 UNKNOWN=-1   # Uninitialized or cannot determine status
int8 OK=0         # Initialized with no issues
int8 WARN=1       # Component is operating but the data may be inaccurate or there may be minor problems
int8 ERROR=2      # Component has encountered a serious problem and cannot or will not operate

Header header

int8  status
string message
