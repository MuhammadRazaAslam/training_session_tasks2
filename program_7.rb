=begin
Write a program that prints the next 20 leap years.
=end
class LeapYears
	def take_input
	  while(1)
			print("Enter starting leap year (e.g 2016) : ")
			@year=gets().to_i
			if(@year<=0)
				puts("!!!!!Invalid Entry!!!!")
				redo
			end
			break
		end
	end
	def show	
		count=0
		while(1)
			if(@year%4==0)
				count+=1
				puts("#{count} = #{@year}")
			end
			if(count==20)
				break
			end
  		@year+=1
		end	
	end
end

lp=LeapYears.new
lp.take_input
lp.show
