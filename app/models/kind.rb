class Kind < ApplicationRecord
  has_many :card_kinds
  has_many :cards, through: :card_kinds
end
