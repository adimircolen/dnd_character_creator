require 'rails_helper'

RSpec.describe Player, type: :model do
  let(:race) { create(:race) }
  let(:game_class) { create(:game_class) }
  let(:background) { create(:background) }
  let(:player) { create(:player, race: race, game_class: game_class, background: background) }

  describe "Validações" do
    it "é válido com atributos válidos" do
      expect(player).to be_valid
    end

    it "é inválido sem um nome" do
      player.name = nil
      expect(player).to_not be_valid
    end

    it "é inválido com um nível fora do intervalo permitido" do
      player.level = 21
      expect(player).to_not be_valid
    end
  end

  describe "Métodos" do
    it "calcula habilidades finais corretamente" do
      final_abilities = player.final_abilities
      expect(final_abilities[:dexterity]).to eq(12) # 10 base + 2 da raça
      expect(final_abilities[:intelligence]).to eq(11) # 10 base + 1 da raça
    end
  end
end

