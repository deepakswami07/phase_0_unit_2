# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Justin Lee

# 2. Pseudocode

## Input: The input will be a 16 digit credit card number.
# Output: The output will be a boolean which will output to true or false.
# Steps:
=begin
  DEFINE class CreditCard
  * DEFINE method initialize 
    * SET initialize to accept one parameter, card_number
    * RAISE new ArgumentError "Your credit card number must be 16 digits." if card_number not equal to 16.
    * SET @card_number to card_number. 
  * END
  
  * DEFINE a method double.
    * SET card_number to CONVERT @card_number to string
    * SPLIT with delimiter
    * MAP each element to integer, and REVERSE
    * SET card_number to method EACH_INDEX the indexes into array
    * ADD SHOVEL/PUSH to NEW Array ODD card_number[index] if index % 2 != 0
    * ADD SHOVEL/PUSH to NEW Array EVEN card_number[index] if index % 2 = 0
    * DOUBLE the numbers in ODD array
    * CONCAT both Arrays
    * INJECT the sum and find the modolo by dividing by 10.
=end

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits

    class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Your credit card number must be 16 digits.") if number.to_s.length != 16
  end 
  
  def check_card
    reverse_number = @number.to_s.split(//).map {|x| x.to_i }.reverse
    odd = []
    even = []
    reverse_number.each_index { |index| odd << reverse_number[index] if index % 2  != 0 }
    reverse_number.each_index { |index| even << reverse_number[index] if index % 2 == 0 }
    double_odd = odd.map {|x| x + x}
    odd = double_odd.map {|x| (x.to_s.length > 1) 
      x.to_s.split(//)
    }
    b = odd.flatten.map {|i| i.to_i }
    even = even
    sum = even.concat(b).inject(0){|result, element| result + element}
    modulo =  sum % 10
    if modulo == 0 
      true
    else
      false
    end
  end
end

# 4. Refactored Solution

class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Your credit card number must be 16 digits.") if number.to_s.length != 16
  end 
  
  def check_card
    reverse_number = @number.to_s.split(//).map {|x| x.to_i }.reverse

    odd = []
    even = []

    reverse_number.each_index { |index| odd << reverse_number[index] if index % 2  != 0 }
    reverse_number.each_index { |index| even << reverse_number[index] if index % 2 == 0 }

    double_odd = odd.map {|x| x + x}
    odd = double_odd.map {|x| (x.to_s.length > 1) 
      x.to_s.split(//)
    }
    b = odd.flatten.map {|i| i.to_i }

    even = even
    sum = even.concat(b).inject(0){|result, element| result + element}
    modulo =  sum % 10

    if modulo == 0 
      true
    else
      false
    end
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

valid_card = CreditCard.new(4408041234567893) # 16 numbers
p valid_card.check_card == true

bad_card = CreditCard.new(4408041234567892) # 16 numbers
p bad_card.check_card == false


CreditCard.new(440801234567892) rescue # 15 numbers
p $!.to_s == "Your credit card number must be 16 digits."


CreditCard.new(44440801234567892) rescue # 17 numbers
p $!.to_s == "Your credit card number must be 16 digits."


# 5. Reflection 
=begin
	I saved this exercise for last becuase I thought this was the 
	most challenging one. I had a rough idea of how to apporach this
	challenge.  But I did know I would hit dead ends sooner or later.
	One of the problems we had was to convert numbers to string and strings
	numbers. Sometime it did not work because we did follow basic order of
	operations.  But we figured that out soon.  There were many aha moments,
	for example at one point we ended up with nested arrays and found a method
	to flatten them.  Also, one of my fav methods is inject, which we used in
	the final steps.  My partener and I worked on this for over 3 hours.  And
	when we finally completed it, it felt good.  This was by far, was one of 
	the best PPS I have worked on.
=end
