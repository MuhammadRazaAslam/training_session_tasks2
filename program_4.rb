
#  4)Solve following OOP Problem 
#    i- Create a superclass called Vehicle also all generic attributes and
#       methods(eg color, model, year, speedup(), brake() etc) for your MyCar 
#       class to inherit from and move the behavior that isn't specific to the MyCar
#       class to the superclass. Create a constant in your MyCar class that stores 
#       information about the vehicle that makes it different from other types of Vehicles.

#    ii- Then create a new class called MyTruck that inherits from your superclass that also has a 
#        constant defined that separates it from the MyCar class in some way.
#    
#    iii- Add a class variable to your superclass that can keep track of the number of objects created that
#         inherit from the superclass. Create a method to print out the value of this class variable as well.

#    iv- Create a module that you can mix in to ONE of your subclasses that describes a behavior unique to that 
#        subclass. e.g how much weight vehicle can tow.

#    v- Print to the screen your method lookup for the classes that you have created.

#    vi- Move all of the methods from the MyCar class that also pertain to the MyTruck class into the Vehicle class. 
#        Make sure that all of your previous method calls are working when you are finished.

#    vii- Write a method called age that calls a private method to calculate the age of the vehicle. Make sure the
#         private method is not available from outside of the class. You'll need to use Ruby's built-in Time class to help.

module TowWeight
  WEIGHT = 4000
	
  def weight_tow(weight)
    WEIGHT < weight ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_accessor :model
  attr_accessor :year
  attr_accessor :speed
  attr_accessor :total_vehicles
	
  @@total_vehicles = 0
	
  def initialize(color, model, year)
    @color = color
	@model = model
	@year = year
	@speed = 0
	@@total_vehicles += 1
  end

  def speedup(speed)
    @speed += speed
  end
	
  def brake(speed)
    @speed -= speed
  end
	
  def count_vehicles
    puts "Total number of vehicles are : #{total_vehicles}" 
  end
  
  def self.count_obj
    @@total_vehicles
  end
end

class MyCar < Vehicle
  SEATING_CAPACITY = "4"
    
  def initialize(color, model, year)
    super(color, model, year)
  end
    
  def age
    puts "Your current age is #{cal_year}"
  end
  
  private
    def cal_year
      Time.now.year - @year
    end
end

class MyTruck < Vehicle
  SEATING_CAPACITY = "2"   
  include TowWeight

  def initialize(color, model, year)
    super(color, model, year)
  end
end

# Main Program
puts "\nVehicle ancestors are :"
puts Vehicle.ancestors
puts "\nMyCar ancestors are :"
puts MyCar.ancestors
puts "\nMyTruck ancestors are :"
puts MyTruck.ancestors

puts "\nMyCar Methods Ouput"
mycar = MyCar.new("BLUE","2010 Toyota Carolla",2012)
mycar.age
mycar.speedup(20)
puts "My Speed is #{mycar.speed}"
mycar.speedup(40)
puts "Now My Speed is #{mycar.speed}"
mycar.brake(10)
puts "Now My Speed is #{mycar.speed}"

mytruck = MyTruck.new("Yellow","2012",2013)
puts "Total Created Objects are :#{Vehicle.count_obj}" 