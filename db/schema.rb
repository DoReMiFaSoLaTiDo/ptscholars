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

ActiveRecord::Schema.define(version: 20150406004430) do

  create_table "Addresses", force: :cascade do |t|
    t.text     "street"
    t.string   "city"
    t.string   "zip_code"
    t.string   "state"
    t.string   "ip_address"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
  end

  add_index "Addresses", ["user_id"], name: "index_addresses_on_user_id"

  create_table "contents", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.decimal  "price"
    t.string   "url"
    t.string   "access_code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "course_contents", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "content_id"
    t.integer  "credit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_contents", ["content_id"], name: "index_course_contents_on_content_id"
  add_index "course_contents", ["course_id"], name: "index_course_contents_on_course_id"

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

  add_index "courses_packages", ["course_id"], name: "index_courses_packages_on_course_id"
  add_index "courses_packages", ["package_id"], name: "index_courses_packages_on_package_id"

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

  add_index "payment_methods", ["user_id"], name: "index_payment_methods_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
