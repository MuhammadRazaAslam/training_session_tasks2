
#  Create a class that gets the first name,last name and
#  company name from the user.Create 7 possible combinations
#  from the first name and last name.Create a csv file which
#  store these 7 combinations and then show these combinations

class GenerateUserName
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :company_name
  attr_accessor :list_name
  
  def initialize
    print("Enter First Name : ")
    @first_name = gets.chomp.to_s
    print("Enter Last Name : ")
    @last_name = gets.chomp.to_s
    print("Enter Company Name : ")
    @company_name = gets
    @list_name = Array.new
  end
 
  def list_made
    (1..7).each do |i|
      ch = rand(34).to_s
      @list_name[i] = @first_name + @last_name + ch
    end
  end
end

run = GenerateUserName.new
run.list_made

require 'csv'
CSV.open("csv_file.csv","w+") do |csv|
  csv << ['Combinations are :']
  (1..7).each do |i|
    csv << [run.list_name[i]]
  end
end

CSV.foreach("csv_file.csv") do |row|
  puts row
end
