# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :bigint           not null
#  student_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord
  belongs_to :student,
    primary_key: id,
    foreign_key: student_id,
    class_name: User

  belongs_to :course,
    primary_key: id,
    foreign_key: course_id,
    class_name: Course
end

# courses have  many enrollments 
# enrollment belong to a course/user? 
# a user has many courses and enrollments

# courses can have many students & students can have many courses, courses and students go through enrollment
