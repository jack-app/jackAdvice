class Product < ApplicationRecord
  has_many :comments
  belongs_to :event
  validates :name, presence: true
  validates :about, presence: true
  validates :member, presence: true
end
