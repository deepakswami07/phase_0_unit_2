# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)

 
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end


=begin
   # Person 2
   #array
    Identify and describe the ruby method you implemented. 

    I used the each method, becuse it iterates over the array 
    and. Next I used "is a integer" method to check only the 
    numbers in the array. Once it returned the number I added
    the argument to the number.  Finally I pushed it to a new
    array.
=end

    def my_array_modification_method(array,number)
    
        new_array = [ ]

           array.each do |x| 
           if x.is_a? (Integer)
              x += number 
              new_array << x
            else
              new_array << x
             end
             end
             new_array
    end
      
=begin
 # Person 2
 #hash
 Identify and describe the ruby method you implemented. 

    I used the map method becuse it iterates over the array
    and then creates anew array. Then I added the argument to 
    the value.
=end

    
      def my_hash_modification_method(hash,number)

      hash.map { |k,v| hash[k] = v + number }

      return hash

      end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

#p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
#p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
#p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
#p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
#p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
#p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
=begin
I got the second problem.  When I first saw it, it seemed pretty straight forward.
As I am more comfortable with hashes, I worked on it first. After researching I had
a few choices of in built methods to use.  I chose the map method, as it iterates and
creates a new array.  I did do a lot of research and tutorials on arrays and hashes
even before I started to work on this problem.  Towards the end, I did have an issue,
I was getting error messages, because after it addded the argument to the value, I did
not have the correct syntax to push the keys and values into the hash.  Finally I figured
out the problem.

I had a tougher time with the array, even though I knew I needed to check for the integer
from the array and then add the argment to it.  At first it seemed pretty easy, but I had issues
with the syntax.  Finally with some research a I was able to finish it.

On a side note, I spent many hours testing the arrays part and it gave me errors even when
the code was correct .  I had mistakenly hashed out my test of array and had the sorting one
open. Many furstrationg hours for not paying attention!  The payoff, researching many methods!

=end