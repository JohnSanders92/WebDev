class Course < ApplicationRecord
	has_many :sections

	validates :course_name, :course_id, :department, :credit_hours, presence: true
	validates :course_id, :credit_hours, numericality: {greater_than: 0}
	validates :course_name, :department, length: {minimum: 1}
	validates_associated :sections
end
