class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :mana_cost
      t.string :base_text
      t.string :flavor_text
      t.string :rarity
      t.string :number
      t.string :img_url
      t.decimal :price, precision: 12, scale: 2

      t.timestamps
    end
  end
end
