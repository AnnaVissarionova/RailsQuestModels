class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments

  def average_grade

    count = 0
    sum = 0.0
    enrollments.each do |enrollment|
      
      enrollment.grades.each do |grade|
        count +=1
        sum += grade.score
      end
    end
    if count > 0
      (sum / count).round(2) 
    else 0
    end
  end
end
