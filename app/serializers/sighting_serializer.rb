class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird
  belongs_to :location
  # with belongs_to and options attributes of related models can be controlled
end

# attributes :created_at, :bird, :location
# This will give no control over related models' attributes to display 

# {
#   "id": "2",
#   "type": "sighting",
#   "attributes": {
#     "created_at": "2019-05-14T16:39:37.011Z",
#     "bird": {
#       "id": 2,
#       "name": "Grackle",
#       "species": "Quiscalus Quiscula",
#       "created_at": "2019-05-14T16:39:36.917Z",
#       "updated_at": "2019-05-14T16:39:36.917Z"
#     },
#     "location": {
#       "id": 2,
#       "latitude": 30.26715,
#       "longitude": -97.74306,
#       "created_at": "2019-05-14T16:39:36.942Z",
#       "updated_at": "2019-05-14T16:39:36.942Z"
#     }
#   }
# }