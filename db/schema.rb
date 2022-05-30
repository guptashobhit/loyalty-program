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

ActiveRecord::Schema[7.0].define(version: 2022_05_30_181133) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "currencies", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "alpha2code"
    t.string "calling_codes", array: true
    t.string "demonym"
    t.string "flag_url"
    t.string "currency_code"
    t.string "currency_name"
    t.string "currency_symbol"
    t.decimal "rate", precision: 12, scale: 9
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "points", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.bigint "amount"
    t.datetime "earned_on"
    t.integer "entry_type", default: 0
    t.datetime "expired_on"
    t.boolean "active"
    t.uuid "spend_id"
    t.uuid "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spend_id"], name: "index_points_on_spend_id"
    t.index ["user_id"], name: "index_points_on_user_id"
  end

  create_table "rewards", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spends", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.bigint "amount", null: false
    t.integer "spend_type", default: 0
    t.uuid "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "forigen_currency_transaction", default: false
    t.uuid "currency_id"
    t.float "conversion_multiplier"
    t.index ["currency_id"], name: "index_spends_on_currency_id"
    t.index ["user_id"], name: "index_spends_on_user_id"
  end

  create_table "user_rewards", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.integer "reward_type", default: 0
    t.datetime "earned_on"
    t.uuid "reward_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reward_id"], name: "index_user_rewards_on_reward_id"
    t.index ["user_id"], name: "index_user_rewards_on_user_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "mobile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
