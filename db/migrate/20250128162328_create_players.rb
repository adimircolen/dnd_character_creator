class CreatePlayers < ActiveRecord::Migration[7.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :level
      t.references :race, null: false, foreign_key: true
      t.references :game_class, null: false, foreign_key: true
      t.references :background, null: false, foreign_key: true

      t.timestamps
    end
  end
end
