# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# Input: Create a new object. Enter the number of sides of a dice(argument)

# Output: Gives the number of sides and also pick a random number out of the number of sides given.


# 2. Pseudocode
=begin
    
     * Set attribute accessor for sides
     * Set instance variable for sides
     * Raise argument error if argument is less than 1
     * Set the rand argument to sides + 1 to the roll method
=end


# 3. Initial Solution

	class Die
		attr_accessor :sides

	  def initialize(sides)
	    @sides = sides
	    raise ArgumentError.new("Enter a number greater than 0")  unless sides > 1
	  end
	  
	  def roll
	    return rand(sides) + 1
	  end
	end


# 4. Refactored Solution

	class Die
		attr_accessor :sides

	  def initialize(sides)
	    @sides = sides
	    raise ArgumentError.new("Enter a number greater than 0")  unless sides > 1
	  end
	  
	  def roll
	  rand(sides) + 1
	  end
	end


# 1. DRIVER TESTS GO BELOW THIS LINE
  # test new object of class
  object_test = Die.new(6)

  # test correct number of sides
  p object_test.sides == 6

  # test random call
  p (1..6).include?(object_test.roll)


# 5. Reflection 
=begin
      I found this challenge to be fairly easy.  Reading the resources provided before working
      on this challenge made me more comfortable with class. How newly created objects are related
      to each class, and how methods defined in the class can be applied to new objects gave me a
      better understanding of objects and methods.  I hope to build on this knowledge as I move on
      to more challenging exercises.
=end