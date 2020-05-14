class BirdSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :species
  # attributes :name_with_species do |obj| # Adds custom attribute
  #   "Name: #{obj.name}. Species: #{obj.species}."
  # end

  attributes :link_to_species_image do |obj| # Creates a link to google images to bird
    "https://www.google.com/search?q=" + obj.name + "&source=lnms&tbm=isch&sa=X"
  end
end
