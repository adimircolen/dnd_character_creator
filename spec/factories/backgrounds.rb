FactoryBot.define do
  factory :background do
    name { "Nobre" }
    description { "Cresceu em riqueza e poder." }
    traits { { skill_proficiencies: ['Persuasion', 'History'], gold: 25 } }
  end
end
