class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, level)
    # this sort of means #=> a || a = b ... or #=> x || x = y
    # it's freak'n weird
    roster[level] ||= []
    roster[level] << student
  end 
  
  def grade(level)
    roster.detect do |x, y| 
      if x == level
        return y 
      end 
    end 
  end 

  
end 

school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)
school.add_student("Bart Simpson", 9)
school.add_student("Homer Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
