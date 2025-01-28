class CreateBackgrounds < ActiveRecord::Migration[7.2]
  def change
    create_table :backgrounds do |t|
      t.string :name
      t.text :description
      t.json :traits

      t.timestamps
    end
  end
end
