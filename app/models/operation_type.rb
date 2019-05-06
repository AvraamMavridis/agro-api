class OperationType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
