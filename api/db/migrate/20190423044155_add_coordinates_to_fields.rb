class AddCoordinatesToFields < ActiveRecord::Migration[5.2]
  def change
    add_column :fields, :coordinates, :json
  end
end
