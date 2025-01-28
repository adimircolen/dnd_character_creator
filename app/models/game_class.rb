class GameClass < ApplicationRecord
  has_many :players

  validates :name, presence: true
  validates :features, presence: true
end
