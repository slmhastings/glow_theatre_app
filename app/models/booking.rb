class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :products
  belongs_to :payment
end
