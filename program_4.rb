=begin
Write a program that prints a multiplication 
table for numbers up to 12
=end
while 1
   print("Enter any number : ")
   number=gets().to_i
   if(number<=0)
      puts('!!!!!Invalid Entry!!!!!')
      redo
    end
    break	
end
puts("Output is :")
for i in 1..12
	result=number*i
	puts("#{number} * #{i} =  #{result}")
end

