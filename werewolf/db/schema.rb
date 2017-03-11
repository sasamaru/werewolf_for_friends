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

ActiveRecord::Schema.define(version: 20170311185609) do

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "village_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["village_id"], name: "index_players_on_village_id"
  end

  create_table "villages", force: :cascade do |t|
    t.string   "name"
    t.text     "describe"
    t.integer  "day"
    t.integer  "silent"
    t.integer  "job"
    t.boolean  "lock"
    t.integer  "code"
    t.integer  "number"
    t.boolean  "secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
