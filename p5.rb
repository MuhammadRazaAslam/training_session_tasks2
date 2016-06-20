
# Write a program that prints 25 prime numbers.

class Prime
  attr_accessor :count

  def initialize
    @@count = 0
  end

  def show
    count = 0.to_i
    i = 2.to_i
    noprime = 1
    loop do
      (2...i).each do |j|
        if i % j == 0
          noprime = 1
          break
        end
        noprime = 0
      end
      if i == 2
        count += 1
        print("#{i} , ")
      end
      if count == 25
      	print("\n")
        break
      end
      if noprime == 0
        print("#{i} , ")
        count += 1
      end
      i += 1
    end
  end
end

prime_obj = Prime.new
prime_obj.show

