namespace :weather do
  desc "Update weather fields"
  task update_fields: :environment do
    
    Field.all.each do |field|
      if field.coordinates.present?
        begin
          point = field.coordinates[0]
          long, lat = point

          weather = Weather.for_area(long, lat)

          puts "Update weather observation for field #{field.id} #{weather[:city]},#{weather[:country]}"

          weather_observation = WeatherObservation.new({
            temperature: weather[:temperature],
            wind_speed: weather[:wind_speed],
            low_temperature: weather[:low_temperature],
            high_temperature: weather[:high_temperature],
            humidity: weather[:humidity],
            field_id: field.id,
          })
          weather_observation.save
        rescue => e
          puts e
        end
      end
    end
  end

end
