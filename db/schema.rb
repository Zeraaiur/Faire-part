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

ActiveRecord::Schema.define(version: 2018_09_12_163437) do

  create_table "commandes", force: :cascade do |t|
    t.string "nom"
    t.integer "fairepart_id"
    t.integer "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fairepart_id"], name: "index_commandes_on_fairepart_id"
  end

  create_table "enveloppes", force: :cascade do |t|
    t.float "prix"
    t.string "format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faireparts", force: :cascade do |t|
    t.string "slug"
    t.string "nom"
    t.boolean "couleur"
    t.boolean "pliant"
    t.string "format"
    t.boolean "verso"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer "nombre"
    t.float "unite"
    t.integer "fairepart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fairepart_id"], name: "index_prices_on_fairepart_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
