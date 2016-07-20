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

ActiveRecord::Schema.define(version: 20160715191235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string   "name"
    t.string   "genre"
    t.string   "photo_url"
    t.integer  "concert_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concert_id"], name: "index_bands_on_concert_id", using: :btree
  end

  create_table "concerts", force: :cascade do |t|
    t.string   "title"
    t.string   "datetime"
    t.string   "ticket_status"
    t.string   "on_sale_datetime"
    t.string   "venue_name"
    t.string   "artists"
    t.string   "city"
    t.string   "artist1"
    t.string   "artist2"
    t.string   "artist3"
    t.string   "time"
    t.string   "venue_address"
    t.integer  "venue_latitude"
    t.integer  "venue_longitude"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
