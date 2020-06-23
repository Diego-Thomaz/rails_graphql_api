module Types
  class CardKindType < Types::BaseObject
    field :id, ID, null: false
    field :card_id, Integer, null: true
    field :kind_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
