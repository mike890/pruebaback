class Category < ApplicationRecord
  has_many :inventories, inverse_of: :category
end
