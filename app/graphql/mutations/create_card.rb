class Mutations::CreateCard < Mutations::BaseMutation
  argument :attributes, Types::CardAttributes, required: true

  field :card, Types::CardType, null: false
  field :errors, [String], null: false

  def resolve(attributes:)
    card = Card.new(attributes.to_h)
    if card.save
      {
        card: card,
        errors: []
      }
    else
      {
        card: nil,
        errors: card.errors.full_messages
      }
    end
  end
end
