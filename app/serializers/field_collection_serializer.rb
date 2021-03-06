class FieldCollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :plant_type,
  :coordinates, :area, :description, :image

  def plant_type
    plant = PlantType.find_by_id(object.plant_type_id)
    {
      name: plant.name,
      category: plant.category,
      image: plant.image,
    }
  end
end
