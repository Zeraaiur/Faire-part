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

ActiveRecord::Schema.define(version: 2018_07_16_182304) do

  create_table "commandes", force: :cascade do |t|
    t.string "nom"
    t.integer "fairepart_id"
    t.integer "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fairepart_id"], name: "index_commandes_on_fairepart_id"
  end

  create_table "faireparts", force: :cascade do |t|
    t.string "slug"
    t.string "nom"
    t.boolean "couleur"
    t.boolean "pliant"
    t.string "format"
    t.boolean "verso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer "nombre"
    t.integer "unite"
    t.integer "fairepart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fairepart_id"], name: "index_prices_on_fairepart_id"
  end

end
