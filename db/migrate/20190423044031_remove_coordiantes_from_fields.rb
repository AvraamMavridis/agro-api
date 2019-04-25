class RemoveCoordiantesFromFields < ActiveRecord::Migration[5.2]
  def change
    remove_column :fields, :coordiantes, :json
  end
end
