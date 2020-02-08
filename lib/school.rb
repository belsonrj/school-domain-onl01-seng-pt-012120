class School
  attr_accessor :name, :roster, :school
  
  def initialize(name)
    @name = name
    @school = school
    @roster = {}
  end 
  
  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
end 


