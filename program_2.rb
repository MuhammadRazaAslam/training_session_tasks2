print("Enter Any Number: ")
number=gets().to_i
puts "#{number}"
sum=0
for i in 1..number do
   	if(i%3==0 || i%5==0)
   		sum+=i
   	end
end
puts("Sum of muliples of 3 or 5 from 1 to #{number} is #{sum}")