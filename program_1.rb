<<<<<<< HEAD

=======
=begin Write a program that asks the user for a number n and prints the sum of the numbers 1 to n
=end
>>>>>>> 15af9c95ee88a6126e90be2bd9f952bcb049e561
class Sum
	attr_accessor:number

	def initialize
		while(1)
			print('Enter any number ( > 0 ) : ')
			@number=gets().to_i
			if( @number <= 0 )
				puts("!!!!Invalid Number!!!!")
				redo
			end
			break
		end
	end
  def cal_sum()
  	sum=0
		for i in 1..@number
				sum += i
		end
		puts("Sum of numbers from 1 to #{@number} is #{sum} ") 
	end
end

s=Sum.new
s.cal_sum
