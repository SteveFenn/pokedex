# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_24_154932) do

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.integer "pokemon_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_pokemon_types_on_genre_id"
    t.index ["pokemon_id"], name: "index_pokemon_types_on_pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "height", default: 0, null: false
    t.integer "weight", default: 0, null: false
    t.integer "speed", default: 0, null: false
    t.integer "special_attack", default: 0, null: false
    t.integer "special_defence", default: 0, null: false
    t.integer "defence", default: 0, null: false
    t.integer "attack", default: 0, null: false
    t.integer "hp", default: 0, null: false
  end

  create_table "sprites", force: :cascade do |t|
    t.integer "pokemon_id", null: false
    t.integer "perspective", default: 0, null: false
    t.string "url", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pokemon_id"], name: "index_sprites_on_pokemon_id"
  end

end
