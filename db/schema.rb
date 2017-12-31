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

ActiveRecord::Schema.define(version: 20171231020128) do

  create_table "chairs", force: :cascade do |t|
    t.string "row"
    t.string "column"
    t.string "status"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_chairs_on_room_id"
  end

  create_table "cinemas", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "status"
    t.string "phone"
    t.integer "price_2D_movie"
    t.integer "price_3D_movie"
    t.integer "price_regular_chair"
    t.integer "price_premium_chair"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.text "abstract"
    t.integer "duration"
    t.date "date_start"
    t.date "date_finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "num_chairs"
    t.string "status"
    t.integer "cinema_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_rooms_on_cinema_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "schedule"
    t.datetime "hour_finish"
    t.string "status"
    t.integer "movie_id"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_schedules_on_movie_id"
    t.index ["room_id"], name: "index_schedules_on_room_id"
  end

end
