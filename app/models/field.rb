class Field < ApplicationRecord
  validates :name, presence: true
  validate :user_id_exists
  validate :plant_type_exists

  has_one :user
  has_one :plant_type
  has_many :weather_observations, dependent: :delete_all
  has_many :operations, dependent: :delete_all

  private

  def user_id_exists
    User.find_by_id(user_id).nil?
  end

  def plant_type_exists
    PlantType.find_by_id(plant_type_id).nil?
  end
end
