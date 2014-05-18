# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself, with: ].

# 1. Pseudocode
=begin
    What is the input?
    The inputs are, two arguments, one i san integer, the other can be a integer or a string.


    What is the output? (i.e. What should the code return?)
    * The code return the same array if the second argument is 0.
    * If the second argument is not added, and the length of the array is less than the first argument,
    it adds "nil"*the difference to the original array.
    * If the first argument is greater than the array lenght, and the second argument is also given,
    it adds "second argument" * the difference to the original array.



    What are the steps needed to solve the problem?
    SET up a class
    SET up a method
    ADD two arguments to the method
    Set the condition to calculate the difference between the array lenght and the first argument.
    PUSH value of output to the original array
    Return array


=end
# 2. Initial Solution
class Array
 def pad!(minsize, optval = nil)
     
         self.length < minsize
         diff = minsize - self.length
         diff.times do
             self << optval
         end
         self
         end
     
  
     def pad(minsize, optval = nil)
     	self.clone.pad!(minsize, optval)
     end
 end


p [1,2,3,4].pad(6)
p [1,2,3,4].pad(6, "Stella!")

p [1,2,3,4].pad!(6)
p [1,2,3,4].pad!(5, "Plastic")


# 3. Refactored Solution
class Array
 def pad!(minsize, optval = nil)
     
         self.length < minsize
         diff = minsize - self.length
         diff.times do
         self << optval
         end
         self
         end
  
     def pad(minsize, optval = nil)
     	self.clone.pad!(minsize, optval)
     end
 end


# 4. Reflection 
=begin
	I first set up the methods and was getting errors, but I noticed that when the methods were called,
	"." was used. This is when I realised that we had to have method within the class and call the
	methods outside of the class. I read and figured out how to clone and call mehtods outside the
	class.  Reading about class gave a better idea of how ruby works.  Also, I did not refactor as any
	more changes will make it difficult to read.  From my readings on refactoring I learded that the
	the purpose of refactoring is make it easy to read and to keep the code form repeating.
	Ofcourse, I will have to do more reading and practicing, as what I have learned from this exercise
	has opened a new area of understanding that I need to further explore.
=end

