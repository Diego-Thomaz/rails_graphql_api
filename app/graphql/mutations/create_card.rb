class Mutations::CreateCard < Mutations::BaseMutation
  include Mutations::Concerns::KindMap
  
  argument :attributes, Types::CardInput, required: true

  field :card, Types::CardType, null: false
  field :errors, [String], null: false

  def resolve(attributes:)
    card = Card.new(prepare_kinds(attributes.to_h))

    if card.save
      {
        card: card,
        errors: []
      }
    else
      {
        card: { id: 0 },
        errors: card.errors.full_messages
      }
    end
  end
end
