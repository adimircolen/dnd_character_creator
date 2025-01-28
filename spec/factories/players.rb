FactoryBot.define do
  factory :player do
    name { Faker::Name.first_name }
    level { 1 }
    association :race
    association :game_class
    association :background

    after(:create) do |player|
      create(:ability, player: player)
    end
  end
end
