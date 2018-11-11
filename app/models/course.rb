class Course < ApplicationRecord
  belongs_to :school
  validates :course_code, presence: true, uniqueness: false, length: {minimum: 3, maximum: 50}
  validates :course_name, presence: true, uniqueness: false
  validates :school_id, presence: true
end
