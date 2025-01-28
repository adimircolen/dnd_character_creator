class CreateGameClasses < ActiveRecord::Migration[7.2]
  def change
    create_table :game_classes do |t|
      t.string :name
      t.text :description
      t.json :features

      t.timestamps
    end
  end
end
