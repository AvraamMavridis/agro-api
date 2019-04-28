require "http"

class Weather
  def self.for_area(long, lat)
    url_base = Settings.weather.weather_url
    app_id = Settings.weather.here_app_id
    app_code = Settings.weather.here_app_code
    url = "#{url_base}&latitude=#{lat}&longitude=#{long}&oneobservation=true&app_id=#{app_id}&app_code=#{app_code}"
    
    response = JSON.parse(HTTP.get(url).body)
    location = response["observations"]["location"][0]
    observation = location["observation"][0]

    {
      location: location["country"],
      city: location["city"],
      temperature: observation["temperature"],
      wind_speed: observation["windSpeed"],
      low_temperature: observation["lowTemperature"],
      high_temperature: observation["highTemperature"],
      humidity: observation["humidity"]
    }
  end

  def self.temperature(lat, l)
  end
end
