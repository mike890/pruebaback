class User < ApplicationRecord
  has_many :works, inverse_of: :user, dependent: :delete_all
  validates :name, presence: true
end
