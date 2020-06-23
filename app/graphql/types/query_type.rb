module Types
  class QueryType < Types::BaseObject
    field :cards, [Types::CardType], null: false

    def cards
      Card.all
    end

    field :card, Types::CardType, null: false do
      argument :id, ID, required: true
    end

    def card(id:)
      Card.find(id)
    end
  end
end
