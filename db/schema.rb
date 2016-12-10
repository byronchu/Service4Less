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

ActiveRecord::Schema.define(version: 20161124105632) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.boolean  "read",            default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id"
  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "user_id"
    t.integer  "qty"
    t.integer  "price"
    t.date     "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["service_id"], name: "index_orders_on_service_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "phone"
    t.string   "country_field"
    t.string   "state_field"
    t.string   "city"
    t.boolean  "service_provider"
    t.string   "provider_name"
    t.string   "picture"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "pic"
  end

  create_table "service_dates", force: :cascade do |t|
    t.date     "date"
    t.integer  "qty_avail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "service_id"
  end

  add_index "service_dates", ["service_id"], name: "index_service_dates_on_service_id"

  create_table "services", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.text     "description"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.integer  "price"
    t.integer  "dates_id"
    t.string   "service_pic_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "pic"
  end

  add_index "services", ["category_id"], name: "index_services_on_category_id"
  add_index "services", ["dates_id"], name: "index_services_on_dates_id"
  add_index "services", ["user_id"], name: "index_services_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
