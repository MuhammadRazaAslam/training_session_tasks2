#  This is an adaptation of a real program that I actually use. I am the record-keeper for
#  a local sports organization. We give a “Grand Champion” award every year to the person who 
#  has gained the most points throughout the tournaments that the organization sponsors. At each
#  tournament, the person who places first gets 6 points, the person who places second gets 4 points,
#  and the person who places third gets 2 point.
#  File test.txt gives a list of people’s last names and how they placed during each tournament. Here are the
#  first few lines of the file:
#  Acosta,1,3,0,0,0
#  Amezcua,2,1,2,0,2
#  Avalos,0,1,1,0,0
#  This says that Acosta took first place at the first tournament (6 points) and third place at the second tournament
#  (2 points), and did not compete at any of the others for a total of 8 points. Amezcua participated in all the 
#  tournaments except the next-to-last one and has a total of 18 points. Avalos did not compete at the first tournament,
#  but took first place at the next two tournaments for a total of 12 points.
#  The reason the file gives place rankings rather than points is that it is easier to type the placings from the result 
#  sheets than to figure out the points; I let the computer program do that for me!
#  Write a program that will open the test.txt file and output a list that gives each person’s name and his or her total
#  points. The list does not have to be sorted; the output for the first three lines might look like this:

#  Acosta 8
#  Amezcua 18
#  Avalos 12

class Grand_Champion

  require "csv"

  def initialize
    file = CSV.read("test.txt", converters: :numeric)
    (0...file.size).each do |i|
      score = 0
      print "#{file[i].first}"
      (1...file[i].size).each do |j|
        case file[i][j]
          when 1
            score += 6
          when 2
            score += 4
          when 3
            score += 2
        end
      end
      puts " #{score}"
    end
  end
end

# Main Program
puts "\nScores of Champions are :"
g_c = Grand_Champion.new

