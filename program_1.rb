
#  1) Take the following array:
#  a = ['white snow', 'winter wonderland', 'melting ice',
#       'slippery sidewalk', 'salted roads', 'white trees']
#  and turn it into a new array that consists of strings 
#  containing one word. (ex. ["white snow", etc...] → ["white", "snow", "winter", "wonderland", ...].

class SampleArray
  attr_accessor :a

  def initialize
    @a = ['white snow', 'winter wonderland', 'melting ice',
         'slippery sidewalk', 'salted roads', 'white trees']
  end

  def new_array
    i = 0
	new_array = Array.new
	(0...@a.size).each{|i| new_array[i] = @a[i].split}
	new_array.flatten
  end
end

arr = SampleArray.new
new_arr = arr.new_array
puts "\nNew array is : "
puts new_arr.inspect