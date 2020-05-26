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

ActiveRecord::Schema.define(version: 2020_05_26_224430) do

  create_table "gardens", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "houseplant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["houseplant_id"], name: "index_gardens_on_houseplant_id"
    t.index ["user_id"], name: "index_gardens_on_user_id"
  end

  create_table "houseplants", force: :cascade do |t|
    t.string "common_name"
    t.string "scientific_name"
    t.string "sun_requirements"
    t.string "water_requirements"
    t.string "description"
    t.boolean "toxic_to_dogs"
    t.boolean "toxic_to_cats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "gardens", "houseplants"
  add_foreign_key "gardens", "users"
end
