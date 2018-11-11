class School < ApplicationRecord
  validates :school_name, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}
end
