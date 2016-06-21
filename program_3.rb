# 3) Get rid of duplicates without specifically removing any one value in following array and sort it.
# arr = [1,2,2,3,4,5,5,6,6,7,7,7,8,2,3,4,56,4,2,12,3,12,3,4,45,100]


class SampleArray
  attr_accessor :arr

  def initialize(arr)
    @arr = arr
  end

  def uniq_array
    @arr.uniq!
    @arr.sort		
  end
end

arr = [1,2,2,3,4,5,5,6,6,7,7,7,8,2,3,4,56,4,2,12,3,12,3,4,45,100]
array = SampleArray.new(arr)
array.uniq_array
puts "\nNew Array is : "
puts array.arr