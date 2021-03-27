FactoryBot.define do
  factory :card do
    name        { FFaker::Name.name }
    mana_cost   { rand(1..5) }
    base_text   { FFaker::Lorem.paragraph }
    flavor_text { FFaker::Lorem.sentence }
    rarity      { Card.rarity.values.sample }
    number      { rand(1..100) }
    img_url     { 'https://i.pinimg.com/736x/3f/94/70/3f9470b34a8e3f526dbdb022f9f19cf7.jpg' }
    price       { 100.00 }
  end
end
