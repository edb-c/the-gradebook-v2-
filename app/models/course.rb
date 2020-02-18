class Course < ApplicationRecord
  belongs_to :student_courses
  belongs_to :teacher_courses

  has_many  :course_details, dependent: :destroy

end
