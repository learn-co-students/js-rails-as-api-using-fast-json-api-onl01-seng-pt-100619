class SightingsController < ApplicationController
  
    #def show
    #  sighting = Sighting.find(params[:id])
    #  render json: SightingSerializer.new(sighting)
    #end

    def show
      sighting = Sighting.find_by(id: params[:id])
      options = {
        include: [:bird, :location]
      }
      render json: SightingSerializer.new(sighting, options)
    end

end
