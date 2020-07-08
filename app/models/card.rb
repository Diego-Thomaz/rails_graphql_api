class Card < ApplicationRecord
  extend Enumerize

  attr_accessor :kind_ids

  has_many :card_kinds
  has_many :kinds, through: :card_kinds

  enumerize :rarity, in: %i[common uncommon rare legendary]
end
