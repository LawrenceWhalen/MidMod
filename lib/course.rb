require "./lib/student"

class Course
  attr_reader :name,
              :capacity
  def initialize(name, capacity)
    @name = name
    @capacity = capacity 
  end
end