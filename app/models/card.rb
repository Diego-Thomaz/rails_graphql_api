class Card < ApplicationRecord
  extend Enumerize

  has_many :card_kinds
  has_many :kinds, through: :card_kinds

  enumerize :rarity, in: %i[common uncommon legendary]
end
