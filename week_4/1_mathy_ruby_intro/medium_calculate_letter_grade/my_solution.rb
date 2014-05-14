# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

=begin

  1. Pseudocode

  What is the input?
  array of numbers between 0 and 100

  What is the output? (i.e. What should the code return?)
  sting of letrer grades

  What are the steps needed to solve the problem?

  Define a method get_grade
  Set one argument to the method
  Find the sum of all the numbers
  Find the average by dividing the sum by total number
  if average is greater than 90 or equal to, return letter grade A
  if average is greater than 80 or equal to, return letter grade B
  if average is greater than 70 or equal to, return letter grade C
  if average is greater than 60 or equal to, return letter grade D
  if average is equal to or less than 60, return letter grade F

=end

# 2. Initial Solution
def get_grade(array)
    
    sum = array.inject(0) {|num, total| num + total}
    average = sum / (array.length)
    
    if average >= 90 
    return "A"
    
    elsif average >= 80 
    return "B"
    
    elsif average >= 70 
    return "C"
    
    elsif average >= 60 
    return "D"
    
    else return "F"
    end
end


# 3. Refactored Solution

   def get_grade(array)
    sum = array.inject(0) {|num, total| num + total}
    average = sum / (array.length)

     return "A" if average >= 90 
     return "B" if average >= 80 
     return "C" if average >= 70 
     return "D" if average >= 60
     return "F" if average <  60
   end

=begin
 4. Reflection 
    This was a easy exercise.  I did not use any other resources or have trouble with 
    either the concept of averages or how to code it in Ruby.  It was good warm up to
    the other exercises which I presume will be challenging.  If I finish my work for
    week 4 before the end of the week, I will try to tackle median and mode exercises.
    I did have fun refactoring the code into single line if's.
=end

