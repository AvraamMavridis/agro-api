class AddAreaDescriptionImageToField < ActiveRecord::Migration[5.2]
  def change
    add_column :fields, :area, :string, :limit => 100
    add_column :fields, :description, :text, :limit => 400
    add_column :fields, :image, :string, :limit => 150
  end
end
