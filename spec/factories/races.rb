FactoryBot.define do
  factory :race do
    name { "Elfo" }
    description { "Ágil e elegante, vive em florestas." }
    bonuses { { dexterity: 2, intelligence: 1 } }
  end
end
