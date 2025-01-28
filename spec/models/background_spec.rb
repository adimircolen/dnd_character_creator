require 'rails_helper'

RSpec.describe Background, type: :model do
  let(:background) { create(:background) }

  describe "Validações" do
    it "é válido com atributos válidos" do
      expect(background).to be_valid
    end

    it "é inválido sem um nome" do
      background.name = nil
      expect(background).to_not be_valid
    end

    it "é inválido sem características" do
      background.traits = nil
      expect(background).to_not be_valid
    end
  end
end

