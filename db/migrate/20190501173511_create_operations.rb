class CreateOperations < ActiveRecord::Migration[5.2]
  def change
    create_table :operations do |t|
      t.string :name
      t.date :date
      t.text :description
      t.references :field, foreign_key: true

      t.timestamps
    end
  end
end
