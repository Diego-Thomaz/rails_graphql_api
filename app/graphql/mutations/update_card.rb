class Mutations::UpdateCard < Mutations::BaseMutation
  include Mutations::Concerns::KindMap

  argument :attributes, Types::CardInput, required: true
  argument :id, ID, required: true

  field :card, Types::CardType, null: false
  field :errors, [String], null: false

  def resolve(attributes:, id:)
    card = Card.find(id)

    if card.update(prepare_kinds(attributes.to_h))
      {
        card: card,
        errors: []
      }
    else
      {
        card: card,
        errors: card.errors.full_messages
      }
    end
  end
end
