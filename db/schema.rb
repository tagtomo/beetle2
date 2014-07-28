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

ActiveRecord::Schema.define(version: 20140727102301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "people", force: true do |t|
    t.string   "number"
    t.string   "person_type"
    t.string   "legal_cd"
    t.string   "legal_position_cd"
    t.string   "name"
    t.string   "name_k"
    t.string   "branch_name"
    t.string   "branch_name_k"
    t.string   "zipno"
    t.string   "address1_cd"
    t.string   "address2_cd"
    t.string   "address3_cd"
    t.string   "address4_cd"
    t.string   "address5_cd"
    t.string   "address"
    t.string   "address_kata"
    t.string   "n_zei_id"
    t.string   "serch_name"
    t.string   "serch_name_k"
    t.date     "update_date"
    t.string   "update_reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "person_histories", force: true do |t|
    t.string   "number"
    t.integer  "history_no"
    t.string   "person_type"
    t.string   "legal_cd"
    t.string   "legal_position_cd"
    t.string   "name"
    t.string   "name_k"
    t.string   "branch_name"
    t.string   "branch_name_k"
    t.string   "zipno"
    t.string   "address1_cd"
    t.string   "address2_cd"
    t.string   "address3_cd"
    t.string   "address4_cd"
    t.string   "address5_cd"
    t.string   "address"
    t.string   "address_kata"
    t.string   "n_zei_id"
    t.string   "serch_name"
    t.string   "serch_name_k"
    t.date     "update_date"
    t.string   "update_reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
