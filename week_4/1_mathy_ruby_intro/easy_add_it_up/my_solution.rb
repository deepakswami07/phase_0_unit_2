# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

=begin
1. Pseudocode
   a.  total
  
   What is the input?
   The input in this case is an array

   What is the output? (i.e. What should the code return?)
   Sum of all the numbers in the array

   What are the steps needed to solve the problem?
   * define a method total
   * make the method to take one argument
   * the code within the method shld be
         * Iterate through the array
         * add up as it iterates
         * output the total
=end  

  # 2. Initial Solution
  def total(arr)
      sum = arr.inject(0) { | num, total| num + total}
  end

  # 3. Refactored Solution
  def total(arr)
     sum = arr.inject(0) do | x, y| x + y end 
  end

=begin
   1. Pseudocode
   b.  sentence_maker

  What is the input?
  The input in this case is an array

  What is the output? (i.e. What should the code return?)
    * Take each word in the array and present it a sentence(string)
    * The first word of the arrat has to be capitalized.
    * The sentence should end with a period.

  What are the steps needed to solve the problem?
  * define the method
  * make the method take one argument
  * the code within the method shld be
     * index the first elment in the array and capitalize it
     * use the join method to join each element in the array.  Set the output to a variable.
     * output the variable and add a period at the end of the sentence

=end

# 2. Initial Solution

  def sentence_maker(arr)
    arr.first.capitalize!
    sentence = arr.join(" ")
    sentence + "."
end
  

# 3. Refactored Solution
  def sentence_maker(arr)
    arr.first.capitalize!
    sentence = arr.join(" ") + "."
  end

=begin

 4. Reflection 
    The psuedocode part of the exercise did help me as to how I would approach to solve the problem.  
    I still need to work on how best how to word my pseudocode, so that it does not read like code.
    I did not have any problems, however, I did have to try out different versions of my code before
    I got it to work.  I am sort of happy to be back in ruby after js. The exercise was prety straight
    forward, but I did have to do some reading on rspec.
=end
