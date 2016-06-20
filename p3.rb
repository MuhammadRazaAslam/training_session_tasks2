
# Write a program that asks the user for a number n and gives him the
# possibility to choose between computing the sum and computing the
# product of 1,…,n.

class SumProduct
  attr_accessor :number
  attr_accessor :start
  attr_accessor :end1
  
  def initialize
    loop do
      print("\nEnter any number whcih is > 1 : ")
      @number = gets().to_i
      if @number <= 1
        puts("\n!!!!Invalid Entry!!!!")
        redo
      end
      break
    end
    loop do
      print("\nEnter start number which is > 0 and < #{@number} : ")
      @start = gets().to_i
      if @start <= 0 || @start >= @number
        puts("\n!!!!Invalid Entry!!!!")
        redo
      end
      break
    end
    loop do
      print("\nEnter ending number which is > #{@start} and <= #{@number} : ")
      @end1 = gets().to_i
      if @end1 > @number || @end1 <= @start
        puts("\n!!!!Invalid Entry!!!!")
        redo
      end
      break
    end
  end

  def cal_sum_product
    sum = 0
    mul = 1
    
    (@start..@end1).each do |i|
      sum += i
      mul *= i
    end
    puts("\nSum of from #{@start} to #{@end1} is #{sum}")
    puts("Multiplication of from #{@start} to #{@end1} is #{mul}")
  end
end

sp = SumProduct.new
sp.cal_sum_product

