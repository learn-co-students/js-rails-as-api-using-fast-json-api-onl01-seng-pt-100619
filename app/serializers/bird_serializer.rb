class BirdSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :species
  # attributes :name_with_species do |obj| # Adds custom attribute
  #   "Name: #{obj.name}. Species: #{obj.species}."
  # end
end
