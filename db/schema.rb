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

ActiveRecord::Schema.define(version: 20220822062358) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.integer "location_id"
    t.string "time"
    t.string "date"
    t.integer "category_id"
    t.boolean "public", default: false
    t.integer "creator"
  end

  create_table "locations", force: :cascade do |t|
    t.string "locale"
  end

  create_table "user_events", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
  end

end
