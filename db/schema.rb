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

ActiveRecord::Schema[8.0].define(version: 2018_02_19_052018) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "documents", force: :cascade do |t|
    t.text "content", default: "", null: false
    t.integer "version", default: 0, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "operations", force: :cascade do |t|
    t.bigint "document_id", null: false
    t.string "kind", null: false
    t.string "data", null: false
    t.integer "version", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["document_id", "version"], name: "index_operations_on_document_id_and_version", unique: true
    t.index ["document_id"], name: "index_operations_on_document_id"
  end

  add_foreign_key "operations", "documents"
end
