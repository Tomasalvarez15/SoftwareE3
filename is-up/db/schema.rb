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

ActiveRecord::Schema.define(version: 2020_06_21_151815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comentarios", force: :cascade do |t|
    t.string "local"
    t.string "mailusuario"
    t.datetime "fechahora"
    t.string "descripcion"
    t.integer "puntaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comunas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dislikes", force: :cascade do |t|
    t.string "liker"
    t.string "liked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equals", force: :cascade do |t|
    t.string "liker"
    t.string "liked"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string "liker"
    t.string "liked"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gustos", force: :cascade do |t|
    t.string "mail1"
    t.string "mail2"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.string "liker"
    t.string "liked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.float "valoracion"
    t.integer "comentarios"
    t.integer "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.string "liker"
    t.string "liked"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_matches_on_users_id"
  end

  create_table "matches_users", id: false, force: :cascade do |t|
    t.bigint "match_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "descripcion"
    t.integer "edad"
    t.integer "imagen"
    t.integer "gustos"
    t.integer "telefono"
    t.string "comuna"
    t.bigint "match_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["match_id"], name: "index_users_on_match_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "mail"
    t.string "nombre"
    t.string "descripcion"
    t.integer "edad"
    t.integer "imagen"
    t.integer "gustos"
    t.integer "telefono"
    t.string "comuna"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "matches", "users", column: "users_id"
  add_foreign_key "users", "matches"
end
