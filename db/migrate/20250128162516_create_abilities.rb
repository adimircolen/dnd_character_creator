class CreateAbilities < ActiveRecord::Migration[7.2]
  def change
    create_table :abilities do |t|
      t.references :player, null: false, foreign_key: true
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma

      t.timestamps
    end
  end
end
