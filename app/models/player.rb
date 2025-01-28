class Player < ApplicationRecord
  belongs_to :race
  belongs_to :game_class
  belongs_to :background

  has_one :ability, dependent: :destroy

  validates :name, presence: true
  validates :level, numericality: { greater_than: 0, less_than_or_equal_to: 20 }

  # Cálculo das habilidades finais
  def final_abilities
    base = ability.attributes.symbolize_keys.slice(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
    race_bonuses = race.bonuses.symbolize_keys
    base.merge(race_bonuses) { |_key, base_value, race_bonus| base_value + race_bonus }
  end
end
