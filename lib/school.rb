class School
  attr_accessor :roster, :student_name, :school, :grade
  
  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

end

