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
  belongs_to :enrolled,
    primary_key: id,
    foreign_key: student_id,
    class_name: User

  belongs_to :enrolled_course,
    primary_key: id,
    foreign_key: course_id,
    class_name: Course
end

# courses have  many enrollments 
# enrollment belong to a course/user? 
# a user has many courses and enrollments

