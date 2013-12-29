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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131229163608) do

  create_table "emails", force: true do |t|
    t.integer  "user_id"
    t.string   "to"
    t.string   "from"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "mta_time"
  end

  create_table "message_parts", force: true do |t|
    t.integer  "message_id"
    t.string   "cid"
    t.string   "mime_type"
    t.string   "is_attachment"
    t.string   "filename"
    t.string   "charset"
    t.binary   "body"
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.string   "sender"
    t.string   "recipients"
    t.string   "subject"
    t.binary   "data"
    t.string   "mime_type"
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "destruct_on"
    t.datetime "delivered_at"
    t.boolean  "viewed",       default: false
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email_address"
    t.string   "im_address"
    t.string   "mailbox_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
