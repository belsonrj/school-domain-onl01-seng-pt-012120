class School
  attr_accessor :roster, :student_name, :school
  
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

school = School.new("Bayside High School")
school.roster
school.add_student("Zach Morris", 9)
school.add_student("Moshe Zeus", 9)
school.add_student("Onkelos Octavius", 9)
school.roster
school.add_student("Sugar Zaza", 5)
school.roster
school.add_student("Theo Madus", 5)
school.add_student("Abbah Zabbah", 2)
school.roster
school.grade(9)
school.sort

