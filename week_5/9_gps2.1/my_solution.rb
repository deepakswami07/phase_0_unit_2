# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names 
# 1)Daniel Deepak
# 2)Alan Florendo

 # This is the file you should end up editing. 
 
def bakery_num(num_people, fav_food)
  # create hash of baked goods and # of people it will serve
  food_servings = { "pie" => 8, "cake" => 6, "cookie" => 1 }
               
  # return error message if invalid food is requested
  raise ArgumentError.new("You can't make that food") if food_servings.include?(fav_food) == false

  # if no error proceed to determine number of orders
  
    # if fave food evenly serves number of people entered,
    # use simple integer division to calculate qty of food
    if num_people % food_servings[fav_food] == 0
     return "You need to make #{num_people / food_servings[fav_food]} #{fav_food}(s)."
    end 

    # if fave food does not serve number of people equally,
    # then determine number of people it can serve and what other foods
    # need to be made to serve the remainder of people

    # create a new hash with foods as keys and quantity to be made as values
    food_orders = Hash.new(0)
    # first, give a round number of people their favorite food
    food_orders[fav_food] += num_people / food_servings[fav_food] #(integer division)
    num_people = num_people % food_servings[fav_food] 
    # second, give the remainder of people whatever--who cares if it's not what they want to eat!?

    # loop thru hash to determine qtys of each non-fave food (reducing num_people each time)
      food_servings.each do |key, value|
        food_orders[key] += num_people / value
        num_people = num_people % value
      end 

    return "You need to make #{food_orders["pie"]} pie(s), #{food_orders["cake"]} cake(s), and #{food_orders["cookie"]} cookie(s)."
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
 