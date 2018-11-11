class School < ApplicationRecord
  has_many :courses, dependent: :destroy

  validates :school_name, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}
end
