class Car < ApplicationRecord
  belongs_to :user

  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :price, presence: true
  validates :engine, presence: true
  validates :seat, presence: true
  validates :aircon, presence: true
  validates :color, presence: true
  validates :description, presence: true
  validates :image, presence: true
end
