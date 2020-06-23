# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w[Artifact Basic Conspiracy Creature Eaturecray Enchantment Ever Host
  Instant Land Legendary Ongoing Phenomenon Plane Planeswalker Scariest
  Scheme See Snow Sorcery Summon Tribal Vanguard World Youll].each { |kind| Kind.create(name: kind) }

Card.create(name: 'Raynor, Ravinican Icon',
            mana_cost: 4,
            base_text: '',
            flavor_text: '',
            rarity: :legendary,
            number: 1,
            img_url: 'https://i.pinimg.com/564x/64/12/2f/64122f3bade82e0c4cbea7b2b2a0c424.jpg',
            price: 999.00,
            kinds: Kind.where(name: ['Legendary', 'Creature']) )

Card.create(name: 'Salgar, Spirit Binder',
            mana_cost: 4,
            base_text: '',
            flavor_text: '',
            rarity: :legendary,
            number: 2,
            img_url: 'https://i.pinimg.com/564x/80/87/a8/8087a814e4b09145b334218f55f0dbc9.jpg',
            price: 1299.00,
            kinds: Kind.where(name: ['Legendary', 'Creature']) )

Card.create(name: 'The Bountiful Court',
            mana_cost: 4,
            base_text: '',
            flavor_text: '',
            rarity: :legendary,
            number: 3,
            img_url: 'https://i.pinimg.com/564x/c4/a1/c7/c4a1c7b6d269daf370067c438fade0d8.jpg',
            price: 199.00,
            kinds: Kind.where(name: ['Legendary', 'Creature']) )

Card.create(name: 'Squirrel Champion',
            mana_cost: 1,
            base_text: '',
            flavor_text: '',
            rarity: :uncommon,
            number: 4,
            img_url: 'https://i.pinimg.com/564x/09/13/db/0913db2b51dd052c798fb8eb1a2eb704.jpg',
            price: 25.00,
            kinds: Kind.where(name: ['Creature']) )

Card.create(name: 'Shedun, Who Serves All',
            mana_cost: 4,
            base_text: '',
            flavor_text: '',
            rarity: :legendary,
            number: 5,
            img_url: 'https://i.pinimg.com/564x/6a/fe/a0/6afea04fc2cf087f1cb0d51638559392.jpg',
            price: 150.00,
            kinds: Kind.where(name: ['Legendary', 'Creature']) )

Card.create(name: 'Nylea, God of the Hunt',
            mana_cost: 3,
            base_text: '',
            flavor_text: '',
            rarity: :legendary,
            number: 6,
            img_url: 'https://i.pinimg.com/564x/b2/df/3f/b2df3f9bc3b803a6db35e97f7780884a.jpg',
            price: 200.00,
            kinds: Kind.where(name: ['Legendary', 'Creature', 'Enchantment']) )

Card.create(name: 'Atemsis, All-Seeing',
            mana_cost: 3,
            base_text: '',
            flavor_text: '',
            rarity: :legendary,
            number: 7,
            img_url: 'https://i.pinimg.com/564x/f5/a4/1e/f5a41eb1dca80b937c14b31af2113ecd.jpg',
            price: 1900.00,
            kinds: Kind.where(name: ['Legendary', 'Creature']) )

Card.create(name: 'Snapcaster Mage',
            mana_cost: 3,
            base_text: '',
            flavor_text: '',
            rarity: :common,
            number: 8,
            img_url: 'https://i.pinimg.com/564x/d7/a9/fa/d7a9fa1f2d1976844e8601f08a88eb14.jpg',
            price: 3.00,
            kinds: Kind.where(name: ['Creature']) )
