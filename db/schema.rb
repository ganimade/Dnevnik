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

ActiveRecord::Schema.define(:version => 20101204072519) do

  create_table "cities", :force => true do |t|
    t.integer "country_id"
    t.string  "title"
    t.string  "phone_code"
  end

  add_index "cities", ["title"], :name => "index_cities_on_title"

  create_table "countries", :force => true do |t|
    t.string "title"
  end

  add_index "countries", ["title"], :name => "index_countries_on_title", :unique => true

  create_table "jobs", :force => true do |t|
    t.integer "country_id"
    t.string  "title"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "schools", :force => true do |t|
    t.integer  "city_id"
    t.string   "title"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schools", ["city_id"], :name => "index_schools_on_city_id"

  create_table "schools_users", :id => false, :force => true do |t|
    t.integer "school_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "mobile"
    t.string   "email"
    t.string   "encrypted_password",   :limit => 128
    t.string   "password_salt"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id"
  end

  add_index "users", ["city_id"], :name => "index_users_on_city_id"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["mobile"], :name => "index_users_on_mobile", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
