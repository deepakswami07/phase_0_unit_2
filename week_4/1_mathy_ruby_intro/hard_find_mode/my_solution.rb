# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

=begin
	

1. Pseudocode

 What is the input?
 Array of number or strings

 What is the output? (i.e. What should the code return?)
 It should return the most frequenlty occuring number or string.

 What are the steps needed to solve the problem?
 
 * define the method
 * make the method take one argument
 * to store the frequencies of the numbers or words create an empty hash
 * go over the array to store keys and values
 * find the element that is repeated the max times

=end

2. Initial Solution
def mode(arr)
  freq = Hash.new(0)
  arr.each { |x| freq[x] += }
  freq = freq.sort_by { |a,b| b}
  
  freq = freq.select { |x,y| y.last }
  }
end


3. Refactored Solution


=begin
4. Reflection 
=end
