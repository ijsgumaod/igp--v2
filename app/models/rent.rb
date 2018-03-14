class Rent < ApplicationRecord
  belongs_to :reservation
  has_many :rooms
  
end
