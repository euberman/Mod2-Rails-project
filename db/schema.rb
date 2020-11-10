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

ActiveRecord::Schema.define(version: 2020_11_10_213839) do

  create_table "blogs", force: :cascade do |t|
    t.string "date"
    t.string "name"
    t.text "content"
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_blogs_on_student_id"
  end

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "video_id", null: false
    t.integer "blog_id", null: false
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_likes_on_blog_id"
    t.index ["student_id"], name: "index_likes_on_student_id"
    t.index ["video_id"], name: "index_likes_on_video_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "cohort_id", null: false
    t.string "name"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["cohort_id"], name: "index_students_on_cohort_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.string "url"
    t.string "description"
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_videos_on_student_id"
  end

end
