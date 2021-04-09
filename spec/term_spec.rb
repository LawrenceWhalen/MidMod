require "./lib/student"
require "./lib/course"
require "./lib/term"

RSpec.describe "Term" do
  describe "#initialize" do
    it "creates a Term instance" do
      term = Term.new("Winter 2018")

      expect(term.class).to eq(Term)
    end
    it "has a name" do
      term = Term.new("Winter 2018")

      expect(term.name).to eq("Winter 2018")
    end
    it "starts with no courses" do
      term = Term.new("Winter 2018")

      expect(term.courses).to eq([])
    end
  end
  describe "#add_course" do
    it "adds a course to the courses array" do
      term = Term.new("Winter 2018")
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Basics of Bob", 3)

      term.add_course(course1)
      term.add_course(course2)

      expect(term.courses).to eq([course1, course2])
    end
  end
  describe '#open_courses' do
    it "lists all courses wher full? eq false" do
      term = Term.new("Winter 2018")
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Basics of Bob", 3)

      term.add_course(course1)
      term.add_course(course2)

      expect(term.open_courses).to eq([course1, course2])
    end
    it "can tell when a course is full" do
      term = Term.new("Winter 2018")
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Basics of Bob", 3)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})

      course1.enroll(student1)
      course1.enroll(student2)

      term.add_course(course1)
      term.add_course(course2)

      expect(term.open_courses).to eq([course2])
    end
  end
  describe "#all_students" do
    it "can list the names all students in all courses" do
      term = Term.new("Winter 2018")
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Basics of Bob", 3)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      student3 = Student.new({name: "Mike", age: 67})

      course1.enroll(student1)
      course1.enroll(student2)
      course2.enroll(student3)

      term.add_course(course1)
      term.add_course(course2)

      expect(term.all_students).to eq(["Morgan", "Jordan", "Mike"])
    end
  end
end
