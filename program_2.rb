
#  2) delete string start with s in following array
#  arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
#  Hint: use start_with? and delete_if methods

class SampleArray
  attr_accessor :arr

  def initialize
    @arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
  end

  def del_str(ch)
    @arr.delete_if{|val| val.start_with?(ch)}
  end
end
 
 # Main Program
array = SampleArray.new
puts "\nOld Array is :"
puts array.arr
array.del_str('s')
puts "\nNew Array is : "
puts array.arr