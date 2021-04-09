require "./lib/student"
require "./lib/course"

RSpec.describe "Course" do
  describe "#initialize" do
    it "creates and instance of Course" do
      course = Course.new("Calculus", 2)

      expect(course.class).to eq(Course)
    end
    it "sets all passed variables" do
      course = Course.new("Calculus", 2)

      expect(course.name).to eq("Calculus")
      expect(course.capacity).to eq(2)
    end
    it "starts without any students" do
      course = Course.new("Calculus", 2)

      expect(course.students).to eq([])
    end
  end
  describe "#full" do
    it "checks if the number of students matches the course capacity" do
      course = Course.new("Calculus", 2)

      expect(course.full?).to eq(false)
    end
  end
end
