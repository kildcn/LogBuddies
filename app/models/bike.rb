class Bike < ApplicationRecord
  belongs_to :user

  # validates :photo, presence: true
  validates :brand, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
