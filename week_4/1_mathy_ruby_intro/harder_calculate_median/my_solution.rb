# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

=begin 

1. Pseudocode

  What is the input?
  Input would be an array of numbers, both odd and even.

  What is the output? (i.e. What should the code return?)
  The output should return the middle number in the array.

  What are the steps needed to solve the problem?
   * define the method
   * make it take an argument 
   * sort the array
   * find out the length of the array
   * if the length is odd 
     * divide the length by two, subtract 1 and divided by 2
     
   * if the length is even
   	 * length of the array divided by two and length of the array divided by two subtract one

=end
 2. Initial Solution
   def median(array)
   sorted = array.sort! 
   len = sorted.length
   if len % 2 == 0
      (sorted[len/2] - 1).to_f + (sorted[len/2]).to_f
      
   else
      sorted[len/2)
   end
end

 3. Refactored Solution


=begin
# 4. Reflection 
=end