require 'rails_helper'

RSpec.describe GameClass, type: :model do
  let(:game_class) { create(:game_class) }

  describe "Validações" do
    it "é válido com atributos válidos" do
      expect(game_class).to be_valid
    end

    it "é inválido sem um nome" do
      game_class.name = nil
      expect(game_class).to_not be_valid
    end

    it "é inválido sem características" do
      game_class.features = nil
      expect(game_class).to_not be_valid
    end
  end
end

