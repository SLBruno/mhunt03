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

ActiveRecord::Schema.define(version: 20151116112834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "c_omments", force: true do |t|
    t.integer  "video_id"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "c_omments", ["user_id"], name: "index_c_omments_on_user_id", using: :btree
  add_index "c_omments", ["video_id"], name: "index_c_omments_on_video_id", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "video_id"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree
  add_index "comments", ["video_id"], name: "index_comments_on_video_id", using: :btree

  create_table "links", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "videos", force: true do |t|
    t.string   "link"
    t.string   "title"
    t.datetime "published_at"
    t.integer  "likes"
    t.integer  "dislikes"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "channel"
    t.string   "views"
    t.string   "category"
    t.string   "duration"
    t.text     "description"
    t.integer  "upvote"
    t.integer  "cached_votes_total", default: 0
    t.integer  "cached_votes_score", default: 0
    t.integer  "cached_votes_up",    default: 0
    t.integer  "cached_votes_down",  default: 0
    t.integer  "user_id"
  end

  add_index "videos", ["cached_votes_down"], name: "index_videos_on_cached_votes_down", using: :btree
  add_index "videos", ["cached_votes_score"], name: "index_videos_on_cached_votes_score", using: :btree
  add_index "videos", ["cached_votes_total"], name: "index_videos_on_cached_votes_total", using: :btree
  add_index "videos", ["cached_votes_up"], name: "index_videos_on_cached_votes_up", using: :btree
  add_index "videos", ["uid"], name: "index_videos_on_uid", using: :btree

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
