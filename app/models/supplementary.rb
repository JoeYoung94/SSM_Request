class Supplementary < ApplicationRecord
  belongs_to :student
  validates :student_id, presence: true
  validates :course_id, presence: true
end
