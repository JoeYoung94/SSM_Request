class Student < ApplicationRecord
  # add validates to student
  validates :student_name, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}
end
