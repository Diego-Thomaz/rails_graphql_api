class Card < ApplicationRecord
  extend Enumerize

  has_many :card_kinds
  has_many :kinds, through: :card_kinds

  validates :name, :mana_cost, :img_url, presence: true
  validates_uniqueness_of :name, message: 'must be unique'
  
  enumerize :rarity, in: %i[common uncommon rare legendary]

  scope :cardset, ->(kind) {
    joins(:kinds).where(kinds: { name: kind })
  }

  def magical?
    (kinds.pluck(:name) & Kind::MAGICAL_TYPES).any?
  end

  def character?
    (kinds.pluck(:name) & Kind::CHARACTER_TYPES).any?
  end
end
