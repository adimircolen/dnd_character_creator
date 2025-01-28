class CreateRaces < ActiveRecord::Migration[7.2]
  def change
    create_table :races do |t|
      t.string :name
      t.text :description
      t.json :bonuses

      t.timestamps
    end
  end
end
