FactoryBot.define do
  factory :ability do
    strength { 10 }
    dexterity { 10 }
    constitution { 10 }
    intelligence { 10 }
    wisdom { 10 }
    charisma { 10 }
    association :player
  end
end

