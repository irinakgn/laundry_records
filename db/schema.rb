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

ActiveRecord::Schema.define(version: 2020_01_21_005927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "license_type"
    t.date "license_expiration_date"
    t.string "license_status"
    t.date "license_creation_date"
    t.string "industry"
    t.string "business_name"
    t.string "business_name_two"
    t.string "address"
    t.string "phone"
    t.string "borough"
    t.string "community_board"
    t.string "bin"
    t.string "bbl"
    t.string "nta"
    t.integer "census_tract"
    t.string "detail"
    t.decimal "longitude"
    t.decimal "latitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
