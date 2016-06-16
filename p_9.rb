class Grand_Champion
    attr_accessor:last_name
    attr_accessor:place_at_tournament
    attr_accessor:tournament_no_c
    require "csv"
    
    def initialize(no)
        if no == 1
            begin
                print "Enter Last Name : "
                @last_name=gets.chomp
                found_name,count_tournament,index,file = search_record ( @last_name )
                begin
                    @tournament_no_c = count_tournament+1
                    print "Enter the place( 0..3 ) at tournament no #{@tournament_no_c} : "
                    @place_at_tournament=gets.to_i
                    raise "Number must be greater than zero or less than 4" if( @place_at_tournament < 0 || @place_at_tournament > 3 )
                    rescue Exception => e
                        puts "!!! Invalid Entry....#{e} !!!"
                        retry
                end
                if found_name == true
                    count_tournament += 1
                    file[index][count_tournament] = @place_at_tournament
                    save_record(1,file)
                else
                   	save_record(2,0)
                end
            end
        else
            display_score_list
        end
    end
    def save_record(n,file)
        if( n == 1 )
        	CSV.open("test.txt","w+") do |csv|
        		file.each do |row|
        			csv << row
        		end
        	end
        else
        	tournament_pts=0
        	case @place_at_tournament
            	when 1
                	tournament_pts=6
            	when 2
                	tournament_pts=4
            	when 3
                	tournament_pts=2
            	else
                	tournament_pts=0
        	end
        	CSV.open("test.txt","a+") do |csv|
            csv << ["#{@last_name}" , "#{@place_at_tournament}"]
        	end
        end
        puts "\nRecord Succesfully Inserted"
    end
    def sort_record
        file_record=CSV.read("test.txt","r")
        if(file_record)
            file_record.sort!
        end
        CSV.open("test.txt","w") do |p|
         file_record.each do |n|
             p << n
         end
        end
    end
    def search_record(name)
        found_name = false
        count_tournament = 0
        file = CSV.read("test.txt",converters: :numeric)
        if file.size > 0
        	for i in 0...file.size
            	if file[i].include?(name)
                	count_tournament = file[i].count(0)
                	count_tournament += file[i].count(1)
                	count_tournament += file[i].count(2)
                	count_tournament += file[i].count(3)
                	found_name = true
                	return found_name,count_tournament,i,file
            	end
        	end
        end
        return found_name,count_tournament
    end
    def display_score_list
        file=CSV.read("test.txt",converters: :numeric)
        if file.size > 0
        for i in 0...file.size
            score=0
            print "#{file[i].first}"
            for j in 1...file[i].size
               case file[i][j]
                   when 1
                       score += 6
                   when 2
                       score += 4
                   when 3
                       score += 2
               end
            end
            puts "  #{score}"
        end
        else
        	puts "\n!!!!Empty File No Record Exist!!!!"
        end
    end
end

#      Main Program
while 1
    begin
        puts "\n\t\tSr         Action"
        puts "\t\t1       Add Record"
        puts "\t\t2       View Record"
        print "Enter sr no : "
        sr_no = gets.to_i
        if sr_no == 1
            g_c = Grand_Champion.new(1)
            g_c.sort_record
        elsif sr_no == 2
        	puts "\nScores of Champions are :"
            g_c = Grand_Champion.new(2)
        else
            raise "\t!!!!Invalid Entry!!!!"
        end
        rescue Exception => e
            puts "#{e}"
            retry
    end
end
