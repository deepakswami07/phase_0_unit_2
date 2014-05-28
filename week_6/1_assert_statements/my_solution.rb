# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement
=begin
def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }


# 2. Pseudocode what happens when the code above runs
  DEFINE a method assert
  CONDITION unless yeild 
  RAISE Assertion failed 
  SET bettysue to variable name
  CALL method with name EQUAL to bettysue.  Passes
  CALL method with name EQUAL to billybob.  Fails
  RAISE Assertion failed
=end

# 3. Copy your selected challenge here
	class CreditCard
	  def initialize(number)
	    @number = number
	    raise ArgumentError.new("Your credit card number must be 16 digits.") if number.to_s.length != 16
	  end 
	  
	  def check_card
	    reverse_number = @number.to_s.split(//).map(&:to_i).reverse

	    odd = []
	    even = []

	    reverse_number.each_index { |index| odd << reverse_number[index] if index % 2  != 0 }
	    reverse_number.each_index { |index| even << reverse_number[index] if index % 2 == 0 }

	    double_odd = odd.map {|x| x + x}
	    odd = double_odd.map {|x| (x.to_s.length > 1) 
	      x.to_s.split(//)
	    }
	    b = odd.flatten.map(&:to_i)

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

=begin
# 4. Original Driver test

	valid_card = CreditCard.new(4408041234567893) # 16 numbers
	p valid_card.check_card == true

	bad_card = CreditCard.new(4408041234567892) # 16 numbers
	p bad_card.check_card == false


	CreditCard.new(440801234567892) rescue # 15 numbers
	p $!.to_s == "Your credit card number must be 16 digits."


	CreditCard.new(44440801234567892) rescue # 17 numbers
	p $!.to_s == "Your credit card number must be 16 digits."

=end

# 4. Convert your driver test code from that challenge into Assert Statements

     def assert
      raise "Assertion failed!" unless yield
     end
     

     valid_card = CreditCard.new(4408041234567893) # 16 numbers
	 assert { valid_card.check_card == true }

	 bad_card = CreditCard.new(4408041234567892) # 16 numbers
	 assert { bad_card.check_card == false }


	CreditCard.new(440801234567892) rescue # 15 numbers
	assert { $!.to_s == "Your credit card number must be 16 digits." }


	CreditCard.new(44440801234567892) rescue # 17 numbers
	assert { $!.to_s == "Your credit card number must be 16 digits." }

=begin
# 5. Reflection
     I chose the credit card validator as my example and more or less followed the example
     given to write the assert statements for credit card.  It seemded too simple and straightforward
     but, when I did a search on documentation, I knew where this exercise was taking us.  So I went back
     and looked at the spec files we have been using all along. As with everything DBC, we are introduced
     to a topic with a samll exercise to warm up and then this leads to other important topics.  I am 
     eager to learn how to write spec files to test along side writing code.  This was not tedious but
     the future challenges will be more so.











=end
