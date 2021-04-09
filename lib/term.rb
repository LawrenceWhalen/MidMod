require "./lib/student"
require "./lib/course"

class Term
  attr_reader :name,
              :courses

  def initialize(name)
    @name = name
    @courses = []
  end

  def add_course(course)
    @courses.push(course)
  end

  def open_courses
    @courses.find_all do |course|
      !course.full?
    end
  end

  def all_students
    @courses.flat_map do |course|
      course.student_names
    end
  end
end
