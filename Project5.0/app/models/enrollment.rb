class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :section
  
  validates :student, presence: true
  validates :section, presence: true
end
