class AddPlantTypeToField < ActiveRecord::Migration[5.2]
  def change
    add_reference :fields, :plant_type, foreign_key: true
  end
end
