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

ActiveRecord::Schema.define(version: 2021_04_13_013049) do

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

# Could not dump table "books" because of following StandardError
#   Unknown type 'reference' for column 'author_id'

  create_table "books_orders", id: false, force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "order_id", null: false
    t.decimal "book_price", precision: 5, scale: 2
    t.decimal "pst", precision: 5, scale: 2
    t.decimal "gst", precision: 5, scale: 2
    t.decimal "hst", precision: 5, scale: 2
  end

# Could not dump table "customers" because of following StandardError
#   Unknown type 'reference' for column 'province_id'

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

# Could not dump table "orders" because of following StandardError
#   Unknown type 'reference' for column 'order_state_id'

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
