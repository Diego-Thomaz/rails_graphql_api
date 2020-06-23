class CreateCardKinds < ActiveRecord::Migration[5.2]
  def change
    create_table :card_kinds do |t|
      t.belongs_to :card, foreign_key: true
      t.belongs_to :kind, foreign_key: true

      t.timestamps
    end
  end
end
