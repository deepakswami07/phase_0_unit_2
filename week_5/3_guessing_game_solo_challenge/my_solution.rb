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

	    def initialize(integer)
		  @answer = integer
		  @last_guess = false
		  raise ArgumentError.new("Enter an integer to continue") unless @answer != Integer
	    end

		def guess(guess_number)
			@guess_number = guess_number

	  	if  @answer < guess_number
	  		@last_guess
	  		return :high
	  		

	  	elsif @answer == guess_number
	  		@last_guess = true
	  		return :correct
	  		

	  	else @answer > guess_number
	  		@last_guess
	  		return :low
	  	end
	  end

	    def solved?
	    	@last_guess
	   end
end


# 4. Refactored Solution

class GuessingGame

	    def initialize(integer)
		  @answer = integer
		  @last_guess = false
	    end

		def guess(guess_number)
	  	if  @answer < guess_number
	  		return :high
	  	elsif @answer == guess_number
	  		@last_guess = true
	  		return :correct
	  	else @answer > guess_number
	  		return :low
	  	end
	  end

	    def solved?
	    	@last_guess
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
	  This was good introduction to class.  I was wondering how even
	  without setting the guess_number variable it still worked. I need
	  to do more class problems to get a deeper understanding of how class
	  works and how it is apllied.  Even though I did not use attr
	  (reader, writer and accessor), I learned how they can be used.  
=end
	

