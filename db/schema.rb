# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 10) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "role"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "attributes", :force => true do |t|
    t.integer  "character"
    t.string   "name"
    t.integer  "rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "backgrounds", :force => true do |t|
    t.integer  "character"
    t.string   "name"
    t.string   "specification"
    t.integer  "rating"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "character_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "characters", :force => true do |t|
    t.integer  "user"
    t.string   "name"
    t.string   "character_type"
    t.text     "motivation"
    t.text     "description"
    t.integer  "willpower"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "charms", :force => true do |t|
    t.integer  "character"
    t.string   "name"
    t.string   "cost"
    t.string   "type"
    t.string   "duration"
    t.string   "notes"
    t.string   "skill"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "languages", :force => true do |t|
    t.integer  "character"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skill_specialties", :force => true do |t|
    t.integer  "character"
    t.string   "skill"
    t.string   "specialty"
    t.integer  "rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skills", :force => true do |t|
    t.integer  "character"
    t.string   "name"
    t.integer  "rating"
    t.boolean  "favored"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "virtues", :force => true do |t|
    t.integer  "character"
    t.string   "name"
    t.integer  "rating"
    t.integer  "channel"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
