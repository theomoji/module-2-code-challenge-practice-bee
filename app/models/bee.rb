class Bee < ApplicationRecord
  has_many :flights
  has_many :flowers, through: :bees
end
