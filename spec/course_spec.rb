require "./lib/student"
require "./lib/course"

RSpec.describe "Course" do
  describe "#initialize" do
    it "creates and instance of Course" do
      course = Course.new("Calculus", 2)

      expect(course.class).to eq(Course)
    end
  end
end
