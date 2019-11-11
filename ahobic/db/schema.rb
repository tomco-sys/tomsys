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

ActiveRecord::Schema.define(version: 2019_10_29_025718) do

  create_table "companies", force: :cascade do |t|
    t.text "company_name"
    t.text "company_kana"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "approval"
    t.integer "status"
    t.integer "dometic"
    t.string "registnum"
    t.string "abb_name"
    t.string "zip12"
    t.text "address1"
    t.text "address2"
    t.text "address3"
    t.string "tel1"
    t.string "fax1"
    t.string "capital"
    t.string "c_department"
    t.string "c_position"
    t.string "person_in_c"
    t.string "c_mail"
    t.integer "currency"
    t.string "period_day"
    t.string "collect_month"
    t.string "collect_day"
    t.string "collect_condition"
    t.string "collect_way"
    t.string "pay_term"
    t.text "remarks"
    t.string "h_zip"
    t.string "h_adress1"
    t.string "h_adress2"
    t.string "h_adress3"
    t.string "h_tel"
    t.string "h_fax"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "usercode"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["usercode"], name: "index_users_on_usercode", unique: true
  end

end
