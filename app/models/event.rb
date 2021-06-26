class Event < ApplicationRecord
    has_many :products
    validates :name, presence: true
    validates :date, presence: true
end
