class Course < ApplicationRecord
  belongs_to :school
  has_many :student_courses
  has_many :students, through: :student_courses
  validates :course_code, presence: true, uniqueness: false, length: {minimum: 3, maximum: 50}
  validates :course_name, presence: true, uniqueness: false
  validates :school_id, presence: true
end
