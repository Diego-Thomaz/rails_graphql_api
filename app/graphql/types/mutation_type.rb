module Types
  class MutationType < Types::BaseObject
    field :create_card, mutation: Mutations::CreateCard
    field :update_card, mutation: Mutations::UpdateCard
  end
end
