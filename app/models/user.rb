class User < ApplicationRecord
  has_many :bookings
  has_many :carts
  has_many :payments
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
