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
    it "can tell when a course isn't full" do
      course = Course.new("Calculus", 2)

      expect(course.full?).to eq(false)
    end
    it "can tell when a course is full" do
      course = Course.new("Calculus", 2)

      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
    end
  end
  describe "#enroll" do
    it "adds a student instance to the students state" do
      course = Course.new("Calculus", 2)

      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})

      course.enroll(student1)
      course.enroll(student2)

      exect(course.students).to eq([student1, student2])
    end
  end
end
