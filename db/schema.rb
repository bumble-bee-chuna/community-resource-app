# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_14_172231) do
  create_table "community_resources", force: :cascade do |t|
    t.string "name"
    t.string "hours_of_operation"
    t.string "phone"
    t.string "address"
    t.string "website"
    t.text "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "in_person_interest_resources", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "bus_routes"
    t.string "phone"
    t.string "website"
    t.time "monday_opening_hours"
    t.time "monday_closing_hours"
    t.time "tuesday_opening_hours"
    t.time "tuesday_closing_hours"
    t.time "wednesday_opening_hours"
    t.time "wednesday_closing_hours"
    t.time "thursday_opening_hours"
    t.time "thursday_closing_hours"
    t.time "friday_opening_hours"
    t.time "friday_closing_hours"
    t.time "saturday_opening_hours"
    t.time "saturday_closing_hours"
    t.time "sunday_opening_hours"
    t.time "sunday_closing_hours"
    t.text "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "pricing_accomodations"
  end

  create_table "in_person_recovery_resources", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "website"
    t.time "monday_opening_hours"
    t.time "monday_closing_hours"
    t.time "tuesday_opening_hours"
    t.time "tuesday_closing_hours"
    t.time "wednesday_opening_hours"
    t.time "wednesday_closing_hours"
    t.time "thursday_opening_hours"
    t.time "thursday_closing_hours"
    t.time "friday_opening_hours"
    t.time "friday_closing_hours"
    t.time "saturday_opening_hours"
    t.time "saturday_closing_hours"
    t.time "sunday_opening_hours"
    t.time "sunday_closing_hours"
    t.text "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bus_routes"
  end

  create_table "in_person_wellbeing_resources", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "website"
    t.time "monday_opening_hours"
    t.time "monday_closing_hours"
    t.time "tuesday_opening_hours"
    t.time "tuesday_closing_hours"
    t.time "wednesday_opening_hours"
    t.time "wednesday_closing_hours"
    t.time "thursday_opening_hours"
    t.time "thursday_closing_hours"
    t.time "friday_opening_hours"
    t.time "friday_closing_hours"
    t.time "saturday_opening_hours"
    t.time "saturday_closing_hours"
    t.time "sunday_opening_hours"
    t.time "sunday_closing_hours"
    t.text "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bus_routes"
  end

  create_table "online_peer_and_recovery_resources", force: :cascade do |t|
    t.string "name"
    t.string "hosting_org"
    t.string "hosting_org_website"
    t.string "time_of_meetings"
    t.text "how_to_access"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at", precision: nil
    t.string "tenant", limit: 128
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
    t.index ["tagger_type", "tagger_id"], name: "index_taggings_on_tagger_type_and_tagger_id"
    t.index ["tenant"], name: "index_taggings_on_tenant"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  add_foreign_key "taggings", "tags"
end
