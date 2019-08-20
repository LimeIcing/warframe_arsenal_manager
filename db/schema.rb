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

ActiveRecord::Schema.define(version: 2019_08_20_203059) do

  create_table "melee_weapons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 50
    t.integer "mastery", default: 0
    t.string "weapon_type", limit: 20
    t.float "attack_speed"
    t.float "finisher_damage"
    t.float "channeling_multiplier"
    t.float "block_resist"
    t.float "impact_damage", default: 0.0
    t.float "puncture_damage", default: 0.0
    t.float "slash_damage", default: 0.0
    t.float "crit_chance", default: 0.0
    t.float "crit_multiplier", default: 1.0
    t.float "status_chance", default: 0.0
    t.float "slam_damage"
    t.string "slam_type", limit: 20, default: ""
    t.float "slam_radius"
    t.float "slide_damage"
    t.float "wall_damage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "primary_weapons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 50
    t.integer "mastery", default: 0
    t.string "weapon_type", limit: 20
    t.string "trigger_type", limit: 20
    t.string "ammo_type", limit: 20
    t.boolean "is_alarming", default: true
    t.float "projectile_speed", default: -1.0
    t.float "fire_rate"
    t.float "accuracy"
    t.integer "mag_size"
    t.integer "max_ammo"
    t.float "reload_time"
    t.float "impact_damage", default: 0.0
    t.float "puncture_damage", default: 0.0
    t.float "slash_damage", default: 0.0
    t.float "crit_chance", default: 0.0
    t.float "crit_multiplier", default: 1.0
    t.float "status_chance", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "secondary_weapons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 50
    t.integer "mastery", default: 0
    t.string "weapon_type", limit: 20
    t.string "trigger_type", limit: 20
    t.string "ammo_type", limit: 20, default: "pistol"
    t.boolean "is_alarming", default: true
    t.float "projectile_speed", default: -1.0
    t.float "fire_rate"
    t.float "accuracy"
    t.integer "mag_size"
    t.integer "max_ammo"
    t.float "reload_time"
    t.float "impact_damage", default: 0.0
    t.float "puncture_damage", default: 0.0
    t.float "slash_damage", default: 0.0
    t.float "crit_chance", default: 0.0
    t.float "crit_multiplier", default: 1.0
    t.float "status_chance", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
