class Course < ApplicationRecord
  belongs_to :instructor
  has_many :course_modules, dependent: :destroy
  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments
  has_many :grades, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
end