# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_01_28_162516) do
  create_table "abilities", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_abilities_on_player_id"
  end

  create_table "backgrounds", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.json "traits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_classes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.json "features"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.integer "race_id", null: false
    t.integer "game_class_id", null: false
    t.integer "background_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["background_id"], name: "index_players_on_background_id"
    t.index ["game_class_id"], name: "index_players_on_game_class_id"
    t.index ["race_id"], name: "index_players_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.json "bonuses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "abilities", "players"
  add_foreign_key "players", "backgrounds"
  add_foreign_key "players", "game_classes"
  add_foreign_key "players", "races"
end
