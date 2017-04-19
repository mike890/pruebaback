class Inventory < ApplicationRecord
  belongs_to :category, inverse_of: :inventory
  validates :size, numericality: {greater_than_or_equal_to: 1}
end
