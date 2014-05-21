# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge myself.

# 2. Pseudocode

# Input: Create a new object of class GuessingGame with an argument.  
# Output: 
  # when you call call the method guess with an argument, 
  # you will get three answers, high(guess > answer) low(guess < answer)
  # If you called the method solved?, you will get a True or False depending on the answer

# Steps:
# SET  instance variable for answer
# CREATE an instance variable that checks to see if the guess is true/false, but starts as false.
# DEFINE method guess with one argument(integer)
# IF condition, if guess is less than answer THEN low
# ElSIF condition, if guess is greater than answer THEN high
# ELSE condtion guess equals answer THEN correct
# DEFINE method solved? 
# IF condition to boolean T/F


# 3. Initial Solution

	class GuessingGame
        attr_reader :guess_number
        attr_reader :solved

	    def initialize(answer)
	    	@answer = answer
	    	raise Array.new("ERROR: enter integer only to continue") unless @answer != Integer
	    end

	    def guess(guess_number)
	    	@guess_number = guess_number

	    	if guess_number > @answer
	    		return :high

	    	elsif guess_number == @answer
	    		return :correct

	    	else guess_number < @answer
	    		return :low
	    	end
	    end
	    			
	    def solved?
	    	@solved = false
	    	if guess_number == @answer
	    		return @solved = true
	    	else
	    		return @solved 
	    	end
	    end
end


# 4. Refactored Solution
class GuessingGame

	    def initialize(answer)
	    	@answer = answer
	    	raise Array.new("ERROR: enter integer only to continue") unless @answer != Integer
	    end

	    def guess(guess_number)
	    	@guess_number = guess_number

	    	case
	    	when guess_number > @answer then :high
	    	when guess_number == @answer then :correct
	    	else
	    	    :low
	    	end
	    end
	    			
	    def solved?
	    	@solved = false

	    	case 
	    	when guess_number == @answer then @solved = true
	    	else
	    		 @solved 
	    	end
	    end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
   #test object
  my_game = GuessingGame.new(12)
  
  #test solved? before
  my_game.solved? == false

  #test low
  p my_game.guess(10) == :low

  #test high
  p my_game.guess(18) == :high

  #test solved? after
  my_game.solved? == true

  
# 5. Reflection 
=begin
	  This was good introduction to class. I need to do more class problems to
	  get a deeper understanding of how class works and how it is apllied.
	  The difficulty I faced with this challenge was I was getting two erros
	  regarding the code in solved? I spent more than an hour on this and
	  eventually called it a day.  The next day, I started all over again
	  and it worked.  This was goos lesson, becuase usually I will continue
	  till I am sucessful no matter how long it took. Overall, like every exercise
	  I run into some problem and in the end it gets resolved.  I guess that is the
	  way it is going to be. I did have fun refactoring!!!

	
=end
	

