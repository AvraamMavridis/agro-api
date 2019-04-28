class Field < ApplicationRecord
  validates :name, presence: true
  validate :user_id_exists
  validate :plant_type_exists

  has_one :user
  has_one :plant_type
  has_many :weather_observations

  private

  def user_id_exists
    return false if User.find_by_id(user_id).nil?
  end

  def plant_type_exists
    return false if PlantType.find_by_id(plant_type_id).nil?
  end
end
