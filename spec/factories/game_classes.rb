FactoryBot.define do
  factory :game_class do
    name { "Guerreiro" }
    description { "Um mestre em combate físico." }
    features { { armor_proficiency: 'Heavy', weapon_proficiency: 'All' } }
  end
end
