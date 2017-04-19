class Work < ApplicationRecord
  belongs_to :user, inverse_of: :works
  has_one :inventory
  scope :last_5, -> {order(created_at: :desc).limit(5)}
end
