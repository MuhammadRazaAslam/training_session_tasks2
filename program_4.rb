=begin
Write a program that prints a multiplication 
table for numbers up to 12
=end

class Table
	def take_input
    while 1
  	 	print("Enter any number : ")
   		@number=gets().to_i
   		if(@number<=0)
      	puts('!!!!!Invalid Entry!!!!!')
      	redo
    	end
    	break	
		end
	end
	def show
  	puts("Output is :")
		for i in 1..12
			result=@number*i
			puts("#{@number} * #{i} =  #{result}")
		end
	end
end

table=Table.new
table.take_input
table.show

