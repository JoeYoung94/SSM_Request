class Student < ApplicationRecord
  has_one :school
  # add validates to student
  validates :student_name, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}
  validates :school_id, presence: true
end
