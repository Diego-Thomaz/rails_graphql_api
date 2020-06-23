module Types
  class CardType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :mana_cost, Integer, null: true
    field :base_text, String, null: true
    field :flavor_text, String, null: true
    field :rarity, String, null: true
    field :number, String, null: true
    field :img_url, String, null: true
    field :price, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :kinds, [Types::KindType], null: true
  end
end
