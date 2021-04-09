require './lib/student'

RSpec.describe "Student" do
  describe "#initialize" do
    it "creates an instance of a student" do
      student = Student.new({})

      expect(student.class).to eq(Student)
    end
    it "gather the states passed at creation" do
      student = Student.new({name: "Caleb", age: 30})

      expect(student.name).to eq("Caleb")
      expect(student.age).to eq(30)
    end
    it "starts with an empty scores state" do
      student = Student.new({name: "Caleb", age: 30})

      expect(student.scores).to eq([])
    end
  end
  describe "#log_score" do
    it "adds a score to the scores state" do
      student = Student.new({name: "Caleb", age: 30})

      student.log_score(89)
      student.log_score(78)

      expect(student.scores).to eq([89,78])
    end
  end
end
