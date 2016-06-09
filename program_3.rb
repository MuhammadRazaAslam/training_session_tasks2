=begin
 Write a program that asks the user for a number n and gives him the
 possibility to choose between computing the sum and computing the
 product of 1,…,n.
=end
class SumProduct
	def take_input
    while 1
			print("Enter any number whcih is >=1 : ")
			@number=gets().to_i
			if(@number<1)
				puts("!!!!Invalid Entry!!!!")
				redo
  		end
  		break
		end
		while 1
  		print("Enter start number which is >0 and <#{@number} : ")
			@start=gets().to_i
			if(@start<=0 || @start>=@number)
					puts("!!!!Invalid Entry!!!!")
					redo
			end
			break
		end
		while 1
  		print("Enter ending number which is <=#{@number} and >#{@start} : ")
			@end1=gets().to_i
			if(@end1>@number || @end1<=@start)
				puts("!!!!Invalid Entry!!!!")
				redo
			end
			break
		end
	end
	def cal_sum_product
    sum=0
		mul=1
		for i in @start..@end1 do
				sum+=i
				mul*=i
		end
		puts("Sum of from #{@start} to #{@end1} is #{sum}")
		puts("Multiplication of from #{@start} to #{@end1} is #{mul}")		
	end
end

sp=SumProduct.new
sp.take_input
sp.cal_sum_product

