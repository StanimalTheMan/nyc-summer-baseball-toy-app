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

ActiveRecord::Schema.define(version: 2022_04_14_045405) do

  create_table "battings", force: :cascade do |t|
    t.integer "G"
    t.integer "PA"
    t.integer "AB"
    t.integer "R"
    t.integer "H"
    t.integer "doubles"
    t.integer "triples"
    t.integer "HR"
    t.integer "RBI"
    t.integer "BB"
    t.integer "K"
    t.integer "SF"
    t.integer "HBP"
    t.integer "ROE"
    t.integer "SB"
    t.integer "CS"
    t.float "AVG"
    t.float "OBP"
    t.float "SLG"
    t.float "OPS"
    t.float "wOBA"
    t.float "BABIP"
    t.float "CNT"
    t.float "RC"
    t.float "RC27"
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_battings_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "team"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "battings", "players"
end
