class PlantType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :field
end
