class Kind < ApplicationRecord
  has_many :card_kinds
  has_many :cards, through: :card_kinds

  CHARACTER_TYPES = %w[Creature Planeswalker Scariest Tribal Vanguard]
  MAGICAL_TYPES   = %w[Sorcery Summon Enchantment Phenomenon]
end
