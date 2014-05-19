# U2.W4: Cipher Challenge

# I worked on this challenge with: Justin Lee

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def north_korean_cipher(coded_message)
  array_coded_message = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  array_coded_message.each do |element| # What is #each doing here? Takes the element from the array created by splitting the string into an array.
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? If true, the loop do will stop running since the condition is met.
    cipher.each_key do |value| # What is #each_key doing here? It is a method that calls the block once for each key in cipher, passing the value as a parameter.
      if element == value  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? X is referring to the elements in array created by splitting the coded message string. Y is referring to the key in cipher.
        puts "I am comparing element and value. X is #{element} and Y is #{value}."
        decoded_sentence << cipher[value]
        found_match = true
        break  # Why is it breaking here? The break causes unconditional termination and continues iterating to the next element in the next array.
      elsif element == "@" || element == "#" || element == "$" || element == "%"|| element == "^" || element == "&"|| element =="*" #What the heck is this doing? This takes the element x and compares it to @, #, $, %, ^, & and returns true or false. If true, adds a space to the decoded sentence array.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(element) # Try this out in IRB. What does "(0..9).to_a" do?  When used as an iterator, ranges return each value in the sequence to an array. In this case 0-9 inclusive.
        decoded_sentence << element
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? Looks for the element and if not found moves to line 58.
      decoded_sentence << element
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. If there is one or more of a digit move to line 64.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning? This returns the value for decoded_sentence in line 11.           
end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.split('')
  letters = coded_message.tr('abcdefghijklmnopqrstuvwxyz', 'wxyzabcdefghijklmnopqrstuv') 
  spaces = letters.tr('@#$%^&*', ' ')
  numbers = spaces.gsub(/\d+/) { |num| num.to_i / 100 }
  numbers
end

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

=begin
# Reflection
     Reading through the instructions and code several times before beginning was very helpful.
     I was confused with regex and its syntax.  The link provided about regex helped.  I 
     became more comfortable with using rspec, driver code and using the terminal.  When I took
     a first look at this exercise, it looked really hard, but breaking them down to smaller
     parts and then looking at the whole worked.  Regrading refacotring, It is not my work entirely,
     I referred to two other cohort members code, and what my pps partner did.  I understand
     how it works, but I'm not sure at this point I could come up with it on my own. I found
     this exercise fun to do.
=end
