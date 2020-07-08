class Types::CardInput < Types::BaseInputObject
  description "Attributes for creating or updating a card"
  argument :name, String, required: true
  argument :mana_cost, Integer, required: true
  argument :base_text, String, required: false
  argument :flavor_text, String, required: false
  argument :rarity, String, required: false
  argument :number, String, required: false
  argument :img_url, String, required: true
  argument :price, Float, required: true
  argument :kinds, [KindInput], required: true
end
