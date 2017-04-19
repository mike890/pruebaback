class Inventory < ApplicationRecord
  belongs_to :category, inverse_of: :inventories
  belongs_to :work, dependent: :destroy
  validates :size, numericality: {greater_than_or_equal_to: 1}
  scope :item, ->(x) {where(size: (x))}
end
