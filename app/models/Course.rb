class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments

  def count_enrollments
    enrollments.length
  end
end
