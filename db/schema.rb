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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130427225411) do

  create_table "searches", :force => true do |t|
    t.integer  "user_id"
    t.string   "address"
    t.datetime "begin"
    t.datetime "end"
    t.integer  "max_distance"
    t.float    "max_price"
    t.string   "space_type"
    t.boolean  "charge"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "spaces", :force => true do |t|
    t.integer  "user_id"
    t.datetime "begin"
    t.datetime "end"
    t.float    "price"
    t.string   "address"
    t.string   "space_type"
    t.boolean  "charge"
    t.string   "picture"
    t.integer  "search_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "paypal_email"
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end