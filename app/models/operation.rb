class Operation < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
  belongs_to :field
end
