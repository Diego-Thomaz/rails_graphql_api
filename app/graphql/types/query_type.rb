module Types
  class QueryType < Types::BaseObject
    field :cards, [Types::CardType], null: false
    
    field :card, Types::CardType, null: false do
      argument :id, ID, required: true
    end

    field :kinds, [Types::KindType], null: false

    def cards
      Card.all
    end

    def card(id:)
      Card.find(id)
    end

    def kinds
      Kind.all
    end
  end
end
