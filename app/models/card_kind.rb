class CardKind < ApplicationRecord
  belongs_to :card
  belongs_to :kind
end
