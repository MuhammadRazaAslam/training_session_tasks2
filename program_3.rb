while 1
	print("Enter any number whcih is >=1 : ")
	number=gets().to_i
	if(number<1)
		puts("!!!!Invalid Entry!!!!")
		redo
  end
  break
end
while 1
  print("Enter start number which is >0 and <#{number} : ")
	start=gets().to_i
	if(start<=0 || start>=number)
		puts("!!!!Invalid Entry!!!!")
		redo
	end
	break
end
while 1
  print("Enter ending number which is <=#{number} and >#{start} : ")
	end1=gets().to_i
	if(end1>number || end1<=start)
		puts("!!!!Invalid Entry!!!!")
		redo
	end
	break
end
sum=0
mul=1
for i in start..end1 do
	sum+=i
	mul*=i
end
puts("Sum of from #{start} to #{end1} is #{sum}")
puts("Multiplication of from #{start} to #{end1} is #{mul}")

