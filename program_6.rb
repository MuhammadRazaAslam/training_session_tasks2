=begin
  Write a guessing game where the user has to guess a secret
  number. After every guess the program tells the user whether
  their number was too large or too small. At the end the number 
  of tries needed should be printed. I counts only as one try if 
  they input the same number multiple times consecutively.
=end
def search(arr,guess_no)
	for i in arr
		if(guess_no == i)
			return 0
		end
	end
	return 1;
end

number=50
try=0
array=Array.new
while(1)
	print("Guess number : ")
	guess=gets().to_i
	  if(guess == number)
			flag=search(array,guess)
			if(flag == 1)
				try+=1
				array.push(guess)
			end
			puts("Congratulations your guess is correct")
			break
		elsif(guess < number)
			flag=search(array,guess)
			if(flag == 1)
				try+=1
				array.push(guess)
			end
			puts("Your number is too less plz try again ")
		elsif(guess > number)
			flag=search(array,guess)
			if(flag == 1)
				try+=1
				array.push(guess)
			end
			puts("Your number is too large plz try again ")
		else
			flag=search(array,guess)
			if(flag == 1)
				try+=1
				array.push(guess)
			end
			puts("Invalid entry!!! plz enter digit #{guess}, #{number}") 
    end
end
for i in 0...array.count
	try=i+1
	puts(" #{try} try is : #{array[i]}")
end
