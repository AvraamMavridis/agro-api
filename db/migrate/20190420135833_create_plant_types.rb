class CreatePlantTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_types do |t|
      t.string :name, unique: true, null: false
      t.string :category
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
