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

ActiveRecord::Schema.define(version: 20150506101441) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "confirms", force: :cascade do |t|
    t.string   "confirm_name",        limit: 255
    t.string   "confirm_phone",       limit: 255
    t.text     "confirm_address",     limit: 65535
    t.integer  "confirm_menu_count",  limit: 4
    t.integer  "confirm_menu_id",     limit: 4
    t.integer  "confirm_user_id",     limit: 4
    t.integer  "confirm_total_price", limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "confirms", ["confirm_menu_id"], name: "index_confirms_on_confirm_menu_id", using: :btree
  add_index "confirms", ["confirm_user_id"], name: "index_confirms_on_confirm_user_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "menu_id",    limit: 4
    t.integer  "cart_id",    limit: 4
    t.integer  "qty",        limit: 4
    t.integer  "order_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id", using: :btree
  add_index "line_items", ["menu_id"], name: "index_line_items_on_menu_id", using: :btree
  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.string   "title",               limit: 255
    t.text     "contents",            limit: 65535
    t.integer  "price",               limit: 4
    t.integer  "user_id",             limit: 4
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.integer  "likes_count",         limit: 4,     default: 0
    t.integer  "in_stock_qty",        limit: 4,     default: 10
    t.string   "mompic_file_name",    limit: 255
    t.string   "mompic_content_type", limit: 255
    t.integer  "mompic_file_size",    limit: 4
    t.datetime "mompic_updated_at"
    t.string   "mominfo",             limit: 255
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "menu_id",       limit: 4
    t.integer  "user_id",       limit: 4
    t.integer  "total_price",   limit: 4,     default: 0
    t.integer  "menu_count",    limit: 4,     default: 0
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "order_name",    limit: 255
    t.string   "order_phone",   limit: 255
    t.text     "order_address", limit: 65535
    t.string   "order_email",   limit: 255
  end

  create_table "stories", force: :cascade do |t|
    t.string   "momheader",        limit: 255
    t.text     "momcontents",      limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "pic_file_name",    limit: 255
    t.string   "pic_content_type", limit: 255
    t.integer  "pic_file_size",    limit: 4
    t.datetime "pic_updated_at"
    t.text     "momcontents_1",    limit: 65535
    t.text     "momcontents_2",    limit: 65535
    t.text     "momcontents_3",    limit: 65535
  end

  create_table "user_menus", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "menu_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "phone",                  limit: 255
    t.text     "address",                limit: 65535
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
    t.string   "fb_image",               limit: 255
    t.string   "fb_uid",                 limit: 255
    t.string   "fb_token",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
