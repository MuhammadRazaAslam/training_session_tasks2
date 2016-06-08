while 1
	print('Enter Any Number(>0) : ')
	number=gets().to_i
	if(number<=0)
		puts("!!!!Invalid Number!!!!")
		redo
	end
	break
end
sum=0
for i in 1..number
	sum+=i
end
puts("Sum of numbers from 1 to #{number} is #{sum} ")