class Student < ApplicationRecord
	has_many :enrollments
	has_many :sections, through: :enrollments, dependent: :destroy

    validates_associated :enrollments
	validates :name, :student_id, :email, presence: true
	validates :student_id, numericality: {greater_than: 0}
	validates :name, :email, length: {minimum: 2}
end
