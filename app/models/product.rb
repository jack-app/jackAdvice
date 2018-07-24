class Product < ApplicationRecord
  has_many :comments
  validates :name, presence: true
  validates :about, presence: true
  validates :need_people, presence: true
  validates :goal, presence: true

end
