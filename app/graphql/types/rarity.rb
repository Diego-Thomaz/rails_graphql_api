class Types::Rarity < Types::BaseEnum
  graphql_name 'Rarity'
  description 'All available rarities'
  
  value 'Common', value: 'common'
  value 'Uncommon', value: 'uncommon'
  value 'Rare', value: 'rare'
  value 'Legendary', value: 'legendary'
end