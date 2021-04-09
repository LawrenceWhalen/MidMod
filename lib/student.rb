class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(student_hash)
    @name = student_hash[:name]
    @age = student_hash[:age]
    @scores = []
  end

  def log_score(score)
    @scores.push(score)
  end

  
end
