class User < ApplicationRecord
  has_many :bookings
  has_many :carts
  has_many :payments
end
