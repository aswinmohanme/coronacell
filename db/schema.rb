# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_15_075404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calls", force: :cascade do |t|
    t.bigint "contact_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_id"], name: "index_calls_on_contact_id"
    t.index ["user_id"], name: "index_calls_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "gender"
    t.integer "age"
    t.string "house_name"
    t.integer "ward"
    t.string "landmark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "panchayat_id"
    t.boolean "willing_to_pay"
    t.string "ration_type"
    t.string "feedback"
    t.integer "number_of_family_members"
    t.date "date_of_contact"
    t.string "tracking_type"
    t.text "panchayat_feedback"
    t.boolean "covid_19_was_confirmed"
    t.boolean "contact_with_suspected_14_days"
    t.boolean "contact_with_confirmed_14_days"
    t.boolean "travel_non_risk_area_4_6"
    t.boolean "travel_non_risk_area_0_3"
    t.boolean "travel_risk_area_4_6"
    t.boolean "travel_risk_area_0_3"
    t.boolean "cormobidity_hypertension"
    t.boolean "cormobidity_diabetes"
    t.boolean "cormobidity_cardio"
    t.boolean "cormobidity_liver"
    t.boolean "cormobidity_renal"
    t.boolean "cormobidity_hypercholestrolemia"
    t.boolean "cormobidity_hiv"
    t.boolean "cormobidity_cancer"
    t.boolean "cormobidity_pregnancy"
    t.boolean "cormobidity_respiratory"
    t.boolean "regular_treatment"
    t.boolean "surgeries_three_years"
    t.boolean "on_immunosuppresants"
    t.boolean "history_of_transplants"
    t.boolean "asomia_cold_rhinorrhea"
    t.boolean "sorethroat_diarrhoea"
    t.boolean "fever_cough"
    t.boolean "breathing_difficulty"
    t.index ["panchayat_id"], name: "index_contacts_on_panchayat_id"
    t.index ["phone"], name: "index_contacts_on_phone", unique: true
  end

  create_table "medical_reqs", force: :cascade do |t|
    t.bigint "contact_id", null: false
    t.boolean "need_medicines"
    t.boolean "fullfilled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "requirement_type"
    t.string "other_needs"
    t.string "not_able_type"
    t.index ["contact_id"], name: "index_medical_reqs_on_contact_id"
  end

  create_table "non_medical_reqs", force: :cascade do |t|
    t.bigint "contact_id", null: false
    t.boolean "need_food"
    t.boolean "fullfilled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "requirement_type"
    t.string "other_needs"
    t.string "not_able_type"
    t.index ["contact_id"], name: "index_non_medical_reqs_on_contact_id"
  end

  create_table "panchayats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role"
    t.bigint "panchayat_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["panchayat_id"], name: "index_users_on_panchayat_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "calls", "contacts"
  add_foreign_key "calls", "users"
  add_foreign_key "medical_reqs", "contacts"
  add_foreign_key "non_medical_reqs", "contacts"
end
