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

ActiveRecord::Schema.define(version: 20171008064423) do

  create_table "surveys", force: :cascade do |t|
    t.string "name"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fr"
    t.integer "fp"
    t.integer "fo"
    t.integer "fs"
    t.integer "fc"
    t.integer "fm"
    t.integer "ft"
    t.integer "rp"
    t.integer "ro"
    t.integer "rs"
    t.integer "rc"
    t.integer "rm"
    t.integer "rt"
    t.integer "po"
    t.integer "ps"
    t.integer "pc"
    t.integer "pm"
    t.integer "pt"
    t.integer "os"
    t.integer "oc"
    t.integer "om"
    t.integer "ot"
    t.integer "sc"
    t.integer "sm"
    t.integer "st"
    t.integer "cm"
    t.integer "ct"
    t.integer "mt"
    t.float "f_weight"
    t.float "r_weight"
    t.float "p_weight"
    t.float "o_weight"
    t.float "s_weight"
    t.float "c_weight"
    t.float "m_weight"
    t.float "t_weight"
  end

end
