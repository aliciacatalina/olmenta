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
ActiveRecord::Schema.define(version: 20140807215039) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140719213424) do
=======
ActiveRecord::Schema.define(version: 20140711152033) do
>>>>>>> e5dc53c... adds facebook authentication corrected
>>>>>>> 8791d34... adds facebook authentication corrected

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "author"
    t.string   "genre"
    t.text     "description"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  create_table "categorizations", force: true do |t|
    t.integer  "genre_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categorizations", ["book_id"], name: "index_categorizations_on_book_id", using: :btree
  add_index "categorizations", ["genre_id"], name: "index_categorizations_on_genre_id", using: :btree

  create_table "collections", force: true do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "wanted_book_id"
  end

  add_index "collections", ["book_id"], name: "index_collections_on_book_id", using: :btree
  add_index "collections", ["user_id"], name: "index_collections_on_user_id", using: :btree
  add_index "collections", ["wanted_book_id"], name: "index_collections_on_wanted_book_id", using: :btree

<<<<<<< HEAD
  create_table "genres", force: true do |t|
=======
  create_table "indentities", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "indentities", ["user_id"], name: "index_indentities_on_user_id", using: :btree

  create_table "user2s", force: true do |t|
    t.string   "provider"
    t.string   "uid"
>>>>>>> e5dc53c... adds facebook authentication corrected
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "name2"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wanted_books", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "book_id"
  end

  add_index "wanted_books", ["book_id"], name: "index_wanted_books_on_book_id", using: :btree

  create_table "wanteds", force: true do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wanteds", ["book_id"], name: "index_wanteds_on_book_id", using: :btree
  add_index "wanteds", ["user_id"], name: "index_wanteds_on_user_id", using: :btree

end
