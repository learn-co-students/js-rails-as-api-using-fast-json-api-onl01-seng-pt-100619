class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    # render json: sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
  
    options = {
    include: [:bird, :location]
  }

    render json: SightingSerializer.new(sighting, options)
    #  after running the serializer generator rails g serializer Sighting
    # result contains a relationship attribute that displays the belongs to ids
#     {
#   "data": {
#     "id": "2",
#     "type": "sighting",
#     "attributes": {
#       "created_at": "2019-05-14T16:39:37.011Z"
#     },
#     "relationships": {
#       "bird": {
#         "data": {
#           "id": "2",
#           "type": "bird"
#         }
#       },
#       "location": {
#         "data": {
#           "id": "2",
#           "type": "location"
#         }
#       }
#     }
#   },
#   "included": [{
#       "id": "2",
#       "type": "bird",
#       "attributes": {
#         "name": "Grackle",
#         "species": "Quiscalus Quiscula"
#       }
#     },
#     {
#       "id": "2",
#       "type": "location",
#       "attributes": {
#         "latitude": 30.26715,
#         "longitude": -97.74306
#       }
#     }
#   ]
# }
  end
#  eithout attributes on serializer class it will only display:
#   {
#   "id": "2",
#   "type": "sighting"
# }

  def index
    sightings = Sighting.all

    # works for the index as well
    render json: SightingSerializer.new(sightings)
  end
end
