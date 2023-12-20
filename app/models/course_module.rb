class CourseModule < ApplicationRecord
  belongs_to :course
  has_many :assignments, dependent: :destroy
  has_many :resources, dependent: :destroy
end