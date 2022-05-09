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

ActiveRecord::Schema[7.0].define(version: 2022_05_06_010752) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "catalogues", force: :cascade do |t|
    t.string "name"
    t.string "manufacturer"
    t.string "caliber"
    t.integer "age"
    t.integer "capacity"
    t.string "accessories"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "databases", force: :cascade do |t|
    t.string "name"
    t.string "caliber"
    t.integer "capacity"
    t.integer "accessories"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "firearms", force: :cascade do |t|
    t.string "name"
    t.string "manufacturer"
    t.string "caliber"
    t.integer "capacity"
    t.integer "age"
    t.string "accessories"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friends", force: :cascade do |t|
    t.string "name"
    t.string "caliber"
    t.integer "capacity"
    t.string "accessories"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pistols", force: :cascade do |t|
    t.string "name"
    t.string "manufacturer"
    t.string "caliber"
    t.integer "capacity"
    t.integer "age"
    t.string "accessories"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testcampings", force: :cascade do |t|
    t.string "name"
    t.integer "weight"
    t.integer "volume"
    t.boolean "carry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testhashes", force: :cascade do |t|
    t.string "test1"
    t.string "test2"
    t.string "test3"
    t.string "string"
    t.string "test4"
    t.string "test5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
