# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: Create a new object of the class, An array of strings(argument)

# Output: Length of the array, Randomly picked string from the array

# Steps

=begin
  * Set up instance variable labels
  * Raise Error Argument for an empty array
  * Set up method sides to give the length of the array
  * Set up method roll to return a random string from the array
=end


# 3. Initial Solution

class Die
  attr_reader :labels
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError.new("no empty array")  if labels.empty?
  end

  def sides
  	if labels.length > 0
  	    return labels.length
  	end
  end

  def roll
  	labels[rand(labels.length)]
  end
end


# 4. Refactored Solution
class Die
  attr_reader :labels
  def initialize(labels)
	  	@labels = labels
	  	raise ArgumentError.new("no empty array")  if labels.empty?
	  end

	    def sides
	  	labels.length
	  end

	   def roll
	   labels[rand(labels.length)]
    end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

	#test object creation
  object_array = Die.new(["A", "B", "C", "D"])

  #test sides
  p object_array.sides == 4

  #test for random call
  p "A".upto("D").include?(object_array.roll)



# 5. Reflection 
=begin
	 In this exercise I was more comfortable using argument error. Initially,
	 I was wondering if there is a different syntax to write out an argument, if it were 
	 an array.  Then realized as long as there is a method within the class that
	 will work on array it should not matter.  I used attribute reader as it could be called
	 anywhere within the class.  I did enjoy doing this exercise.




=end
	

