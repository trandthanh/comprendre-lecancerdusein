# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_15_072136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entendus", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.text "story"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "liens", force: :cascade do |t|
    t.string "title"
    t.string "link"
    t.string "publication"
    t.text "description"
    t.bigint "question_id"
    t.bigint "quotidien_id"
    t.bigint "entendu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entendu_id"], name: "index_liens_on_entendu_id"
    t.index ["question_id"], name: "index_liens_on_question_id"
    t.index ["quotidien_id"], name: "index_liens_on_quotidien_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "quotidiens", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  add_foreign_key "liens", "entendus"
  add_foreign_key "liens", "questions"
  add_foreign_key "liens", "quotidiens"
end
