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

ActiveRecord::Schema.define(version: 20140825033601) do

  create_table "items", force: true do |t|
    t.integer  "unit_category_id"
    t.decimal  "price_per_unit",     precision: 6, scale: 2
    t.string   "name"
    t.string   "store"
    t.date     "price_last_updated"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipe_items", force: true do |t|
    t.integer  "recipe_id"
    t.integer  "item_id"
    t.integer  "unit_id"
    t.decimal  "amount",     precision: 15, scale: 4
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.integer  "unit_category_id"
    t.decimal  "amount",           precision: 15, scale: 4
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
