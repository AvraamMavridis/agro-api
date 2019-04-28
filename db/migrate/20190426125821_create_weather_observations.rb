class CreateWeatherObservations < ActiveRecord::Migration[5.2]
  def change
    create_table :weather_observations do |t|
      t.integer :temperature
      t.integer :high_temperature
      t.integer :low_temperature
      t.integer :humidity
      t.integer :wind_speed
      t.references :field, foreign_key: true

      t.timestamps
    end
  end
end
