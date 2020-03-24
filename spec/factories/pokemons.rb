FactoryBot.define do
  factory :pokemon do
    slug
    name
    height { 10 }
    weight { 20 }
    speed { 5 }
    special_defence { 4 }
    special_attack { 3 }
    defence { 2 }
    attack { 1 }
    hp { 20 }
  end
end
