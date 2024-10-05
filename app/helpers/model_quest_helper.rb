module ModelQuestHelper
  def prepare_data
    # result = []
    # @courses = Course.all
    # @courses.each do |course|
    #   result.append(title: course.title, cnt: course.count_enrollments)
    # end
    # result
    Course.select("title, count(student_id) AS cnt").left_outer_joins(:enrollments).group(:title).order(:cnt)

  end
end
