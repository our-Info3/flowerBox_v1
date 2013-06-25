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

ActiveRecord::Schema.define(version: 20130625163920) do

  create_table "adresses", force: true do |t|
    t.string   "billing_street"
    t.integer  "billing_house_number"
    t.integer  "billing_zipcode"
    t.string   "billing_city"
    t.string   "shipping_street"
    t.integer  "shipping_house_number"
    t.integer  "shipping_zipcode"
    t.string   "shipping_city"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flower_boxes", force: true do |t|
    t.decimal  "price"
    t.integer  "size"
    t.string   "color"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flowers", force: true do |t|
    t.string   "name"
    t.decimal  "flower_price"
    t.integer  "flower_box_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "numberOfBoxes"
    t.decimal  "totalCosts"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
