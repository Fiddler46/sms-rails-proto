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

ActiveRecord::Schema.define(version: 2021_09_24_074710) do

  create_table "developers", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "mobile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "team_id", null: false
    t.string "title"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_messages_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "dept_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "dev_ids", default: "--- []\n"
  end

  create_table "teams_developers", id: false, force: :cascade do |t|
    t.integer "team_id"
    t.integer "developer_id"
    t.index ["developer_id"], name: "index_teams_developers_on_developer_id"
    t.index ["team_id"], name: "index_teams_developers_on_team_id"
  end

  add_foreign_key "messages", "teams"
end
