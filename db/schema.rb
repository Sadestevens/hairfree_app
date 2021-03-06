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

ActiveRecord::Schema.define(version: 20150309214853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string  "full_name"
    t.date    "born_on"
    t.string  "phone"
    t.integer "user_id",   null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "pic_url"
    t.string   "title"
    t.string   "category"
    t.string   "location"
    t.date     "date"
    t.datetime "time"
    t.string   "description"
    t.integer  "user_id",     null: false
  end

  create_table "invites", force: :cascade do |t|
    t.integer "events_id", null: false
    t.integer "user_id",   null: false
    t.string  "going"
  end

  create_table "messages", force: :cascade do |t|
    t.string  "body"
    t.date    "date_sent"
    t.integer "user_id",   null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "profile_pic"
    t.string   "username"
    t.string   "user_type"
    t.string   "website"
    t.string   "location"
    t.string   "bio"
    t.string   "hair"
    t.integer  "events_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "accounts_id"
    t.integer  "profiles_id"
    t.integer  "events_id"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profile_id"
  end

end
