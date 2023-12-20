class Student < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :courses, through: :enrollments 
  has_many :grades, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  has_many :attendances, dependent: :destroy
end 