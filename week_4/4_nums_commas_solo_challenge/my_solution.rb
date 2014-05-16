# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


=begin 

    1. Pseudocode

	What is the input?
	The input is an integer

	What is the output? (i.e. What should the code return?)
	The output is a string of the integer with comma's at the thousandth place.

	What are the steps needed to solve the problem?
	* Define the method
	* Set one argument to the method
	* Convert the number to a string
	* Split the string 
	* Reverse the array
	* Find the length of the array
	* Set the condition for 0, 10 and 100
	* Set the condition for the numbers with the length greater than 3
	* Iterate through the array using a loop to
	  find the index of every 4th number
	* Insert a comma at the index
	* Set the increment to + 4
	* Return the array
=end

# 2. Initial Solution
    def separate_comma(integer)
    
		string = integer.to_s

		string = string.split(//)

		string = string.reverse!

		string_length = string.length

		   if string_length <= 3
              string.join("").reverse
           else

		        if string_length <= 6
		           x = 0
		        elsif string_length % 2 == 0
		           x = 1
		        else
		          x = 0
		        end
      
           i = 3
           while i <= string_length + x do 
           string.insert(i, ',')
           i += 4
           end
         end
        string.join("").reverse
    end

# 3. Refactored Solution

   def separate_comma(integer)
    
	   string = integer.to_s
	   string = string.split(//).reverse!
	   string_length = string.length
	   
	    if string_length <= 3
	    string.join("").reverse

	    else
		   if string_length <= 6
		      x = 0
		    else string_length % 2 == 0
		      x = 1
		    end
	      
	       i = 3
	      while i <= string_length + x do
	      string.insert(i, ',')
	       i += 4 
	     end
	    end
	      string.join.reverse.to_s
    end

# Driver Test

p separate_comma(0) == "0"
p separate_comma(10) == "10"
p separate_comma(100) == "100"
p separate_comma(10000) == "10,000"
p separate_comma(100000) == "100,000"
p separate_comma(999999999) == "999,999,999"
p separate_comma(999999999999) == "999,999,999,999"

=begin
     4. Reflection
     This time around, I decided to do all my premilinary work using a paper and pencil.  Also,
     I decided to take a break if got stuck.  Writing out 
     the story and pseudocode, and going over it till I understood was a big help. Breaking them
     down to smaller sections without having to think of the whole problem was also helpful
     
     The first few steps was pretty straight, I converted the integer to a string and split it.
     When I had to join it, I realised that it had to be reversed first. Getting the output for 0,
     10 and 100 was fairly easy. To apply the join method, I had to do some research and with
     some trial error I got it to work.  Coming up with a way to find the index to insert the
     comma was a struggle.  I knew the process and the steps but made several mistakes with the
     syntax  This took me longer than I had anticipated.  I went to documents and read over
     insert again and other array methods. I knew how to do each of the smaller codes as a
     stand alone code, but puting them all together to work as a unit was something new to me.
     But I am happy I was able to finish it. Overall, I'm pretty confident, but I have a long
     way to go to learning diferent methods and applying it.

     Also, I finally understood driver tests and RSpec or be able to differentiate bewtween them.
     I am new to the world of coding, so every new concept or topic takes me longer than others.
     But I am better today than I was on monday.

=end

