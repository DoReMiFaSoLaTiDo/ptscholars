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

ActiveRecord::Schema.define(version: 20150913034209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "type"
    t.text     "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "ip_address"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string   "type"
    t.string   "name",        default: ""
    t.decimal  "price",       default: 0.0
    t.string   "url"
    t.string   "access_code"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "course_contents", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "content_id"
    t.integer  "credit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_contents", ["content_id"], name: "index_course_contents_on_content_id", using: :btree
  add_index "course_contents", ["course_id"], name: "index_course_contents_on_course_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "code"
    t.text     "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses_packages", id: false, force: :cascade do |t|
    t.integer "package_id", null: false
    t.integer "course_id",  null: false
  end

  add_index "courses_packages", ["course_id"], name: "index_courses_packages_on_course_id", using: :btree
  add_index "courses_packages", ["package_id"], name: "index_courses_packages_on_package_id", using: :btree

  create_table "packages", force: :cascade do |t|
    t.text     "package_name"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "type"
    t.text     "account_name"
    t.string   "card_number"
    t.date     "expiry_date"
    t.integer  "ccv"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "payment_methods", ["user_id"], name: "index_payment_methods_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                  default: "", null: false
    t.string   "user_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "course_contents", "contents"
  add_foreign_key "course_contents", "courses"
  add_foreign_key "payment_methods", "users"
end
