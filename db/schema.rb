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

ActiveRecord::Schema.define(version: 2019_05_07_122118) do

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "plant_type_id"
    t.json "coordinates"
    t.string "area", limit: 100
    t.text "description", limit: 400
    t.string "image", limit: 150
    t.index ["plant_type_id"], name: "index_fields_on_plant_type_id"
    t.index ["user_id"], name: "index_fields_on_user_id"
  end

  create_table "operation_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operations", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.text "description"
    t.integer "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_operations_on_field_id"
  end

  create_table "plant_types", force: :cascade do |t|
    t.string "name", null: false
    t.string "category"
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weather_observations", force: :cascade do |t|
    t.integer "temperature"
    t.integer "high_temperature"
    t.integer "low_temperature"
    t.integer "humidity"
    t.integer "wind_speed"
    t.integer "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_weather_observations_on_field_id"
  end

end
