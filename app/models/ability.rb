class Ability < ApplicationRecord
  belongs_to :player

  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma,
            numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 20 }

  # Inicializa com valores padrão caso não fornecidos
  after_initialize do
    self.strength ||= 10
    self.dexterity ||= 10
    self.constitution ||= 10
    self.intelligence ||= 10
    self.wisdom ||= 10
    self.charisma ||= 10
  end
end

