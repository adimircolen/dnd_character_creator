require 'rails_helper'

RSpec.describe Race, type: :model do
  let(:race) { create(:race) }

  describe "Validações" do
    it "é válido com atributos válidos" do
      expect(race).to be_valid
    end

    it "é inválido sem um nome" do
      race.name = nil
      expect(race).to_not be_valid
    end

    it "é inválido sem bônus" do
      race.bonuses = nil
      expect(race).to_not be_valid
    end
  end
end

