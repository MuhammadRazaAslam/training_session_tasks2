=begin Write a program that asks the user for a number n and prints the sum of the numbers 1 to n
=end
class Sum
	def take_input()
    while(1) 
      print('Enter Any Number(>0) : ')
			@number=gets().to_i
			if(@number<=0)
				puts("!!!!Invalid Number!!!!")
				redo
			end
			break
		end
	end
  def cal_sum()
  	sum=0
		for i in 1..@number
				sum+=i
		end
		puts("Sum of numbers from 1 to #{@number} is #{sum} ") 
	end
end

s=Sum.new
s.take_input
s.cal_sum
