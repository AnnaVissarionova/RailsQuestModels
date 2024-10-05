class ModelQuestController < ApplicationController
  include ModelQuestHelper
  def step1; end

  def step2
    @students = Student.all
    @courses = Course.all
  end

  def step3
    @enrollments = Enrollment.all
  end

  def step4
    @students = Student.all
  end

  def step5
    @courses_groups = prepare_data # [{title: 'A', name: 3},...]
  end

  def final; end
end
