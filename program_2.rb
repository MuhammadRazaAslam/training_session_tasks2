
=begin
Modify the previous program such that only multiples of 
three or five are considered in the sum,
 e.g. 3, 5, 6, 9, 10, 12, 15 for n=17
=end
class Sum
  attr_accessor:number

  def initialize
    while(1)
    	print("Enter Any Number ( > 0 ) : ")
			@number=gets().to_i
			if( @number <= 0 )
				puts("!!!!Invalid Entry!!!!")
				redo
			end
	  	break
	  end
  end
  def cal_sum()
			sum=0
			for i in 1..@number do
   				if( i % 3 == 0 || i % 5 == 0 )
   					sum+=i
   				end
  		end
			puts("Sum of muliples of 3 or 5 from 1 to #{@number} is #{sum}")
	end
end
s=Sum.new
s.cal_sum
