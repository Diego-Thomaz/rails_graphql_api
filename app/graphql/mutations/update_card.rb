class Mutations::UpdateCard < Mutations::BaseMutation
  argument :attributes, Types::CardUpdateAttributes, required: true
  argument :id, ID, required: true

  field :card, Types::CardType, null: false
  field :errors, [String], null: false

  def resolve(attributes:, id:)
    card = Card.find(id)

    if card.update(attributes.to_h)
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
