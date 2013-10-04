# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131002031601) do

  create_table "monsters", force: true do |t|
    t.string    "name"
    t.string    "attr"
    t.string    "category"
    t.integer   "hp"
    t.integer   "atk"
    t.integer   "rcv"
    t.integer   "rarity"
    t.integer   "exp"
    t.integer   "askill"
    t.integer   "lskill"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "icon_file_name"
    t.string    "icon_content_type"
    t.integer   "icon_file_size"
    t.timestamp "icon_updated_at"
  end

  create_table "teams", force: true do |t|
    t.integer  "m1_id"
    t.integer  "m1_lvl"
    t.string   "m1_plus"
    t.integer  "m2_id"
    t.integer  "m2_lvl"
    t.string   "m2_plus"
    t.integer  "m3_id"
    t.integer  "m3_lvl"
    t.string   "m3_plus"
    t.integer  "m4_id"
    t.integer  "m4_lvl"
    t.string   "m4_plus"
    t.integer  "m5_id"
    t.integer  "m5_lvl"
    t.string   "m5_plus"
    t.integer  "m6_id"
    t.integer  "m6_lvl"
    t.string   "m6_plus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
