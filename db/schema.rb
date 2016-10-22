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

ActiveRecord::Schema.define(version: 20161022193957) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "auth_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "outbound_msg_id"
    t.integer  "motivating_msg_id"
    t.string   "description"
    t.integer  "initial_effort"
    t.integer  "subsequent_effort"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "monday",      default: true
    t.boolean  "tuesday",     default: true
    t.boolean  "wednesday",   default: true
    t.boolean  "thursday",    default: true
    t.boolean  "friday",      default: true
    t.boolean  "saturday",    default: false
    t.boolean  "sunday",      default: false
    t.boolean  "schedule_on", default: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "schedules", ["user_id"], name: "index_schedules_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "fb_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "locale"
    t.integer  "timezone"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "users"
  add_foreign_key "schedules", "users"
end
