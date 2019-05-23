class Car < ApplicationRecord

  validates :make, presence: true
  validates :model, length: {minimum: 3}
  validates :mpg, numericality: {greater_than_or_equal_to: 0}
  validates :price, numericality: {greater_than_or_equal_to: 0 }

end
