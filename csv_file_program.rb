class GenerateUserName
     attr_accessor:first_name
     attr_accessor:last_name
     attr_accessor:company_name
     attr_accessor:list_name
     def initialize
     	   print("Enter First Name : ")
     	   @first_name=gets.chomp.to_s
     	   print("Enter Last Name : ")
           @last_name=gets.chomp.to_s
           print("Enter Company Name : ")
           @company_name=gets
           @list_name=Array.new
     end
     def list_made
     	 for i in 1..7 do
     	 	ch=rand(34).to_s
     	 	@list_name[i]=@first_name + @last_name + ch
         end
     	end
end
run=GenerateUserName.new
run.list_made

require 'csv'

CSV.open("csv_file.csv","w+") do |csv|
csv << ['Combinations']
	for i in 1..7 do
      csv << [run.list_name[i]]
  end
end

CSV.foreach("csv_file") do |row|
  puts row.inspect
end


