
# Write a program that prints a multiplication
# table for numbers up to 12

class Table
  attr_accessor :number

  def initialize
    loop do
      print("\nEnter any number ( > 0 ): ")
      @number = gets().to_i
      if @number <= 0
        puts("\n!!!!!Invalid Entry!!!!!")
        redo
      end
      break	
    end
  end

  def show
    puts("Output is :")
    (1..12).each do |i|
      result = @number * i
      puts("#{@number} * #{i} = #{result}")
    end
  end
end

table = Table.new
table.show