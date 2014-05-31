# U2.W6: Refactoring for Code Readability

# I worked on this challenge with: Justin Lee.

# Original Solution

class CreditCard # SET class CreditCard
	def initialize(num) # INITIALIZE with one argument, num
		raise ArgumentError.new("Your credit card number must be 16 digits.") if num.to_s.size != 16 # RAISE ArgumentError if num.length is not equal to 16
		@num = num.to_s # SET instance variable, num, equal to num converted to a string
	end

	def check_card # DEFINE check_card
		rev_num = @num.split(//).map{ |x| x.to_i }.reverse # SET variable rev_num to @num.split, then use #map to convert each string to an integer, and finally apply .reverse
		odd = [] # SET odd to an empty array
		even = [] # SET even to an empty array
		rev_num.each_index {|x| odd << rev_num[x] if x % 2 != 0 } # ITERATE through rev_num using .each_index and if element is an odd number push it into the odd array
		rev_num.each_index {|x| even << rev_num[x] if x % 2 == 0 } # ITERATE through rev_num using .each_index and if element is an odd number push it into the even array
		odd = (odd.map{ |x| x * 2 }).map{ |x| (x.to_s.length > 1 ) # ITERATE through the odd array using .map and multiply each element by 2. Then map the array to find elements that are single digits
			x.to_s.split(//) # SPLIT element to string with //
		}
		odd = odd.flatten.map{ |i| i.to_i } # FLATTEN the multi-demnsional array and map each element to convert the string to an integer
		(even.concat(odd).inject(0) { |result, n| result + n }) % 10 == 0 # CONCAT even and odd and use the inject method to find the sum. The sum modulo 10 should equal 0.
	end
end

# Refactored Solution

class CreditCard 
	def initialize(number) 
		raise ArgumentError.new("Your credit card number must be 16 digits.") if number.to_s.size != 16 
		@reverse_number = number.to_s.split(//).map(&:to_i).reverse # Concise way to iterate and convert to integer
	end

	def check_card
		odd_array = []
		even_array = []
		@reverse_number.each_index {|each_number| odd_array << @reverse_number[each_number] if each_number % 2 != 0 }
		@reverse_number.each_index {|each_number| even_array << @reverse_number[each_number] if each_number % 2 == 0 }
		double_odd_array = odd_array.map{ |each_number| each_number * 2 }
		odd_array = double_odd_array.map{ |each_number| (each_number.to_s.length > 1)
			each_number.to_s.split(//)
		}
		odd_array = odd_array.flatten.map(&:to_i) # Concise way to iterate and convert to integer
		sum = even_array.concat(odd_array).inject(:+) # Concise inject method
		profit = sum % 10
    profit == 0 ? true : false # Single line if statement
  end
end

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise  "Assertion failed!" unless yield
end

bad_card = CreditCard.new(4408041234567892)
valid_card = CreditCard.new(4408041234567893)

assert { bad_card.check_card == false }
assert { valid_card.check_card == true }

# Reflection

=begin
This was a very good lesson.  I think the more I refactor the better I get at it.  I learnt and used three new tricks.
I used a single if statement, shortened map iteration, shortened inject method.  My partner and I used variable names 
that more closely reflected what the variable was pointing to or represented.
=end