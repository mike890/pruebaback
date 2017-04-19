class User < ApplicationRecord
  has_many :works, inverse_of: :user
  validates :name, presence: true
end
