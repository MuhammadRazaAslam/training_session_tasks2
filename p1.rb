 
 # Write a program that asks the user for a number n 
 # and prints the sum of the numbers 1 to n

class Sum
  attr_accessor :number
  def initialize
    loop do
      print("\nEnter any number ( > 0 ) :")
      @number = gets().to_i
      if @number <= 0
        puts("!!!!Invalid Entry!!!!")
        redo
      end
      break
    end
  end

  def cal_sum
    sum = 0
    (1..@number).each{ |i| sum += i }
    puts("\nSum of numbers from 1 to #{@number} is #{sum}")
  end
end

s = Sum.new
s.cal_sum