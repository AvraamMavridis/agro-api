class WeatherObservation < ApplicationRecord
  validates :temperature, presence: true
  validates :field_id, presence: true
  belongs_to :field
end
