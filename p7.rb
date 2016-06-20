
#  Write a program that prints the next 20 leap years.

class LeapYears
  attr_accessor :year

  def initialize
    loop do
      print("\nEnter starting leap year (e.g 2016) : ")
      @year = gets().to_i
      if @year <= 0
        puts("\n!!!!!Invalid Entry!!!!")
        redo
      end
      break
    end
  end

  def show	
    count=0
    loop do
      if @year % 4 == 0
        count += 1
        puts("#{count} = #{@year}")
      end
      if count == 20
        break
      end
      @year += 1
    end	
  end
end

lp = LeapYears.new
lp.show