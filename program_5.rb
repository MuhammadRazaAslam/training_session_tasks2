
#  5) Create a class 'Student' with attributes name and grade. 
#     Do NOT make the grade getter public, so joe.grade will raise 
#     an error. Create a better_grade_than? method, that you can call like so...
#  puts "Well done!" if joe.better_grade_than?(bob)

class Student
  attr_accessor :name
  
  protected
  attr_accessor :grade

  public 
  def initialize(name,grade)
    @name = name
    @grade = grade	
  end

  def better_grade_than?(obj)
    grade > obj.grade ? val = true : val = false
    return val  
  end
end

# Main Program
joe = Student.new('joe',98)
bob = Student.new('bob',75)
puts "Well done!" if joe.better_grade_than?(bob)