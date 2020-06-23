class Types::CardUpdateAttributes < Types::BaseInputObject
  description "Attributes for creating or updating a card"
  argument :name, String, required: false
  argument :mana_cost, Integer, required: false
  argument :base_text, String, required: false
  argument :flavor_text, String, required: false
  argument :rarity, String, required: false
  argument :number, String, required: false
  argument :img_url, String, required: false
  argument :price, Float, required: false
end
