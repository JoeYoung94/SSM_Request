class Course < ApplicationRecord
  validates :course_code, presence: true, uniqueness: false, length: {minimum: 3, maximum: 50}
  validates :course_name, presence: true, uniqueness: false
end
