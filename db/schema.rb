# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_14_060012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_details", force: :cascade do |t|
    t.string "assignment_name"
    t.integer "assignment_grade"
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
  end

  create_table "student_courses", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "course_id"
    t.index ["course_id"], name: "index_student_courses_on_course_id"
    t.index ["student_id"], name: "index_student_courses_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
  end

  create_table "teacher_courses", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "course_id"
    t.index ["course_id"], name: "index_teacher_courses_on_course_id"
    t.index ["teacher_id"], name: "index_teacher_courses_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "prefix"
    t.string "firstname"
    t.string "lastname"
  end

end
