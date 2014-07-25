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

ActiveRecord::Schema.define(:version => 20131120063336) do

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "contactnumber"
    t.text     "complaint"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "category_name"
    t.string   "product_name"
    t.decimal  "product_price",     :precision => 10, :scale => 0
    t.decimal  "list_price",        :precision => 10, :scale => 0
    t.string   "user_image"
    t.decimal  "quantity",          :precision => 10, :scale => 0
    t.string   "description"
    t.text     "brief_description"
    t.date     "offer_date"
    t.decimal  "discounts",         :precision => 10, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "lastname"
    t.decimal  "phone",                :precision => 10, :scale => 0
    t.decimal  "zip",                  :precision => 10, :scale => 0
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.text     "address"
    t.date     "date_of_registration"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "vendors", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.decimal  "phone",           :precision => 10, :scale => 0
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.date     "date_of_reg"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "vendors", ["email"], :name => "index_vendors_on_email", :unique => true
  add_index "vendors", ["remember_token"], :name => "index_vendors_on_remember_token"

end
