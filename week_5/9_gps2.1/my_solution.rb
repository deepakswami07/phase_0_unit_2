# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names 
# 1)Daniel Deepak
# 2)Alan Florendo

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)
  # create hash of baked goods and # of people it will serve
  my_list = { "pie" => 8, "cake" => 6, "cookie" => 1 }
               
  # set default value as false for whether food called on is valid
  has_fave = false
   
  # loop through the hash of foods to validate entered food
  my_list.each_key do |key|
    # if match is found set has fave = true, so there is no error msg
    if key == fav_food  
      has_fave = true 
    end
  end 
  
  # if unlised item return error msg
  if has_fave == false
     raise ArgumentError.new("You can't make that food")
  end   

# if no error proceed to determine number of orders
  
    # if fave food evenly serves number of people entered,
    # use simple integer division to calculate qty of food
    if num_of_people % my_list[fav_food] == 0
     return "You need to make #{num_of_people / my_list[fav_food]} #{fav_food}(s)."
    end 

    # if fave food does not serve number of people equally,
    # then determine number of people it can serve and what other foods
    # need to be made to serve the remainder of people

    # create a new hash with foods as keys and quantity to be made as values
    food_qty = Hash.new(0)
    # first, give a round number of people their favorite food
    food_qty[fav_food] += num_of_people / my_list[fav_food] #(integer division)
    num_of_people = num_of_people % my_list[fav_food] 
    # second, give the remainder of people whatever--who cares if it's not what they want to eat!?

    # loop thru hash to determine qtys of each non-fave food (reducing num_of_people each time)
      my_list.each do |key, value|
        food_qty[key] += num_of_people / value
        num_of_people = num_of_people % value
      end 

    return "You need to make #{food_qty["pie"]} pie(s), #{food_qty["cake"]} cake(s), and #{food_qty["cookie"]} cookie(s)."
end 
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.

p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
#p bakery_num(41, "cake") #== "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
# This should be
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!

#  Reflection 
=begin

    This was another good exercise, seemed very daunting at first.  When we started
    I was totally lost, but the GPS advisor was very supportive without givng too 
    much inofrmation. Just by indenting correctly, the code looked so much better.
    And with a little help from our advisor, we were able to change a long if/else
    to four lines by creating ans hash and iterating through it.  I did enjoy
    the exercise and was also intorduced to what real life refactoring work will be like.

=end
