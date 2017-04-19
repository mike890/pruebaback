class Inventory < ApplicationRecord
  belongs_to :category, inverse_of: :inventories
  belongs_to :work
  validates :size, numericality: {greater_than_or_equal_to: 1}
end
