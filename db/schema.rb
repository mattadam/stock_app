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

ActiveRecord::Schema.define(:version => 20131031033509) do

  create_table "stocks", :force => true do |t|
    t.string   "name"
    t.string   "ticker"
    t.string   "url"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.decimal  "roe"
    t.decimal  "roe_last_year"
    t.decimal  "roe_before_last"
    t.decimal  "roe_fourth_year"
    t.decimal  "eps_growth"
    t.decimal  "eps_growth1"
    t.decimal  "eps_growth2"
    t.decimal  "eps_growth3"
    t.decimal  "eps_growth4"
  end

end
