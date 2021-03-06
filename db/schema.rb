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

ActiveRecord::Schema.define(:version => 20150124124911) do

  create_table "addresses", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "current_latitude"
    t.float    "current_longitude"
    t.string   "use_dynamic_location"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.integer  "relationship_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contractors_qualifications", :id => false, :force => true do |t|
    t.integer "contractor_id"
    t.integer "qualification_id"
  end

  create_table "jobs", :force => true do |t|
    t.string   "description"
    t.boolean  "abroad"
    t.boolean  "filled"
    t.boolean  "cancelled"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "company_id"
    t.string   "salary_range"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "jobs_qualifications", :id => false, :force => true do |t|
    t.integer "job_id"
    t.integer "qualification_id"
  end

  create_table "jobsearches", :force => true do |t|
    t.boolean  "interested"
    t.datetime "dateinterested"
    t.boolean  "contacted"
    t.datetime "datecontacted"
    t.boolean  "offered"
    t.datetime "dateoffered"
    t.boolean  "rejected"
    t.datetime "daterejected"
    t.boolean  "accepted"
    t.boolean  "dateaccepted"
    t.boolean  "declined"
    t.datetime "datedeclined"
    t.integer  "firstsearchposition"
    t.integer  "job_id"
    t.integer  "contractor_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "qualifications", :force => true do |t|
    t.string   "name"
    t.string   "subdivision"
    t.string   "industry"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "relationships", :force => true do |t|
    t.boolean  "favouritecontractor"
    t.boolean  "companyblockcontractor"
    t.integer  "contractor_id"
    t.integer  "company_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "phone"
    t.string   "role"
    t.string   "type"
    t.integer  "company_id"
    t.date     "dob"
    t.integer  "distance_travel"
    t.boolean  "abroad"
    t.boolean  "available_now"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "last_active"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
