class Reservation < ApplicationRecord
  has_many :rents
  belongs_to :guest
  belongs_to :user
end
