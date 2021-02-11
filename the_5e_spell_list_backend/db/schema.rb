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

ActiveRecord::Schema.define(version: 2021_02_11_160351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "classes"
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "higher_level"
    t.string "page"
    t.string "range"
    t.string "components"
    t.string "material"
    t.string "ritual"
    t.string "duration"
    t.string "concentration"
    t.string "casting_time"
    t.string "level"
    t.integer "level_int"
    t.string "school"
    t.string "dnd_class"
    t.string "archetype"
    t.string "circles"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "range_int"
  end

  create_table "spells_knowns", force: :cascade do |t|
    t.bigint "character_id"
    t.bigint "spell_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_spells_knowns_on_character_id"
    t.index ["spell_id"], name: "index_spells_knowns_on_spell_id"
  end

end
