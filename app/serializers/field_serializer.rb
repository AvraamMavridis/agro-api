class FieldSerializer < ActiveModel::Serializer
  attributes :id, :name, :plant_type,
  :coordinates, :area, :description, :image,
  :weather_observations, :weather, :operations

  def plant_type
    plant = PlantType.find_by_id(object.plant_type_id)
    {
      name: plant.name,
      category: plant.category,
      image: plant.image,
    }
  end

  def weather
    coord = object.coordinates[0]
    Weather.for_area(coord["lng"], coord["lat"])
  end
end
