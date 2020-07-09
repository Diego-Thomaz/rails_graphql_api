class Card < ApplicationRecord
  extend Enumerize

  has_many :card_kinds
  has_many :kinds, through: :card_kinds

  validates :name, :mana_cost, :img_url, presence: true
  validates_uniqueness_of :name, message: "must be unique"
  
  enumerize :rarity, in: %i[common uncommon rare legendary]
end
