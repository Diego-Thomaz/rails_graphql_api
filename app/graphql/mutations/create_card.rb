class Mutations::CreateCard < Mutations::BaseMutation
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
        card: nil,
        errors: card.errors.full_messages
      }
    end
  end

  private

  def prepare_kinds(attributes)
    kinds = Kind.where(id: attributes[:kinds].map { |x| x[:id].to_i })
    attributes[:kinds] = kinds
    attributes
  end
end
