class Category < ApplicationRecord
  has_many :inventory, inverse_of: :category
end
