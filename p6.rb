
#  Write a guessing game where the user has to guess a secret
#  number. After every guess the program tells the user whether
#  their number was too large or too small. At the end the number
#  of tries needed should be printed. I counts only as one try if
#  they input the same number multiple times consecutively.

class Game
  attr_accessor :number
  attr_accessor :try
  attr_accessor :array

  def initialize
    @number = 50
    @try = 0
    @array = Array.new
    loop do
      print("\nGuess number : ")
      @guess = gets().to_i
      if @guess == @number
        flag = search(@array, @guess)
        if flag == false
          @try += 1
          @array.push(@guess)
        end
        puts("\nCongratulations your guess is correct")
        break
      elsif @guess < @number
        flag = search(@array, @guess)
        if flag == false
          @try += 1
          @array.push(@guess)
        end
        puts("Your number is too less plz try again ")
      elsif @guess > @number
        flag = search(@array, @guess)
        if flag == false
          @try += 1 
          @array.push(@guess)
        end
        puts("Your number is too large plz try again ")
      else
        flag = search(@array, @guess)
        if flag == false
          @try += 1
          @array.push(@guess)
        end
        puts("\nInvalid entry!!! plz enter digit #{@guess}, #{@number}")
      end
    end	
  end

  def search(arr, guess_no)
    arr.each do |i|
      if guess_no == i
        return true
      end
    end
    return false;
  end

  def show_tries
    (0...@array.count).each do |i|
      @try = i + 1
      puts(" #{@try} try is : #{@array[i]}")
    end
  end
end

game=Game.new
game.show_tries


