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

ActiveRecord::Schema.define(:version => 20110205211236) do

  create_table "editable_content", :force => true do |t|
    t.text   "content"
    t.string "page_name"
  end

  create_table "speaking_engagements", :force => true do |t|
    t.integer  "user_id"
    t.integer  "speaking_proposal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "speaking_proposals", :force => true do |t|
    t.string   "title"
    t.text     "abstract"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "organization"
    t.string   "address"
    t.string   "zip_code"
    t.string   "postal_address"
    t.string   "country"
    t.string   "invoice_reference"
    t.string   "telephone_number"
    t.boolean  "attending_dinner"
    t.string   "food_preferences"
    t.text     "comments"
    t.boolean  "unregistered"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "authentication_token"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end