class Flat < ApplicationRecord
  validates :name, :address, :price_per_night, presence: true
  validates :address, uniqueness: true
  validates :price_per_night, numericality: { only_integer: true, greater_than: 0 }
end
