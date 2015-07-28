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

ActiveRecord::Schema.define(version: 20150728022004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comics", force: :cascade do |t|
    t.string   "title"
    t.string   "series"
    t.integer  "issue_no"
    t.boolean  "loan"
    t.string   "checkin"
    t.string   "author"
    t.string   "publisher"
    t.string   "penciller"
    t.string   "inker"
    t.string   "colorist"
    t.string   "letterist"
    t.date     "publish_date"
    t.string   "img_url"
    t.integer  "print_num"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "comics_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "comic_id"
  end

  add_index "comics_users", ["comic_id"], name: "index_comics_users_on_comic_id", using: :btree
  add_index "comics_users", ["user_id"], name: "index_comics_users_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "fav_pub"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end