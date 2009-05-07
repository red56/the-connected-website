# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20081111101404) do

  create_table "attachments", :force => true do |t|
    t.integer  "post_id",      :limit => 11
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.integer  "size",         :limit => 11
    t.integer  "width",        :limit => 11
    t.integer  "height",       :limit => 11
    t.integer  "parent_id",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avatars", :force => true do |t|
    t.integer  "user_id",      :limit => 11
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.integer  "size",         :limit => 11
    t.integer  "width",        :limit => 11
    t.integer  "height",       :limit => 11
    t.integer  "parent_id",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorizations", :force => true do |t|
    t.integer  "tag_id",     :limit => 11
    t.integer  "post_id",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_id",    :limit => 11
    t.integer  "post_id",    :limit => 11
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.integer  "user_id",     :limit => 11
    t.integer  "detail_id",   :limit => 11
    t.string   "detail_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_categorization_events", :force => true do |t|
    t.integer  "user_id",    :limit => 11
    t.integer  "tag_id",     :limit => 11
    t.integer  "post_id",    :limit => 11
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_changed_events", :force => true do |t|
    t.integer  "user_id",    :limit => 11
    t.integer  "post_id",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.integer  "user_id",      :limit => 11
    t.string   "title"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "featured_at"
    t.text     "video"
    t.datetime "commented_at"
  end

  create_table "queued_emails", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comment_id", :limit => 11
  end

  create_table "subscriptions", :force => true do |t|
    t.integer  "user_id",    :limit => 11
    t.integer  "post_id",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "remember_token"
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "reset_password_token"
    t.datetime "remember_token_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "profile_text"
    t.string   "home_page"
    t.boolean  "editor",                                  :default => false
    t.string   "name"
    t.string   "location"
    t.boolean  "admin",                                   :default => false
    t.datetime "contributed_at"
    t.integer  "login_count",               :limit => 11, :default => 0
    t.datetime "last_login_at"
  end

end
