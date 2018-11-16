class Student < ApplicationRecord
  has_one :school
  has_many :student_courses
  has_many :courses, through: :student_courses
  has_many :supplementaries
  # add validates to student
  validates :student_name, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}
  validates :school_id, presence: true
end
