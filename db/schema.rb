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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161124084046) do
=======
ActiveRecord::Schema.define(version: 20161108090858) do
>>>>>>> 45e0b4f1cd20e1d3236c9b7ebce65b5e1ee4ffb3

  create_table "accounts", force: :cascade do |t|
    t.string   "name",       limit: 25, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "title",                 limit: 20,  null: false
    t.string   "description",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
<<<<<<< HEAD
    t.integer  "price",                             null: false
=======
    t.text     "price",                             null: false
>>>>>>> 45e0b4f1cd20e1d3236c9b7ebce65b5e1ee4ffb3
    t.string   "accountname"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "status"
    t.integer  "approved_by"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255,                 null: false
    t.string   "email",           limit: 30,                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest",                             null: false
    t.boolean  "admin",                       default: false
    t.string   "name",            limit: 20
  end

end
