# Position along a plan. Not typically published by itself.

uint64  index    # index of the nearest point on the plan
float64 distance # forward along route, in meters from point identified by index field
                 # (negative values indicate the distance is backward along the route)
