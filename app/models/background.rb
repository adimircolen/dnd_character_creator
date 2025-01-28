class Background < ApplicationRecord
  has_many :players

  validates :name, presence: true
  validates :traits, presence: true
end

