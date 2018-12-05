class Section < ApplicationRecord
  belongs_to :course
  has_many :enrollments
  has_many :students, through: :enrollments, dependent: :destroy 

  validates_associated :enrollments
  validates :semester, :section_id, :course_id, :room_number, presence: true
  validates :section_id, :course_id, :room_number, numericality: {greater_than: 0}
  validates :semester, length: {minimum: 2}
  validates :course, presence: true
end
