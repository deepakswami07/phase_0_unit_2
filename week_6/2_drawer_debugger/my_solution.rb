# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

	class Drawer

	     attr_reader :contents

	    # Are there any more methods needed in this class?

		def initialize
				@contents = []
				@open = true
		end



		def open
			    @open = true
		end



		def close
			    @open = false
		end 



		def add_item(item)
				@item = item
			    @contents << item
		end



		def remove_item(item = @contents.pop) #what is `#pop` doing? removes the last item from the array
				@contents.delete(item)
		end



		def dump  # what should this method return? empty drawer
				puts "Your drawer is empty."
		end



		def view_contents
				puts "The drawer contains:"
				@contents.each {|silverware| puts "- " + silverware.type }
	    end



	class Silverware
	    attr_reader :type

        # Are there any more methods needed in this class? yes def clean_silverware

		def initialize(type, clean = true)
				@type = type
				@clean = clean
		end



		def clean_silverware
				@clean
		end



		def eat
				puts "eating with the #{type}"
				@clean = false
		end



		def clean
				@clean = true
		end

	end


		knife1 = Silverware.new("knife")

		silverware_drawer = Drawer.new

		silverware_drawer.add_item(knife1) 
		silverware_drawer.add_item(Silverware.new("spoon"))
		silverware_drawer.add_item(Silverware.new("fork")) 
		silverware_drawer.view_contents

		silverware_drawer.remove_item
		silverware_drawer.view_contents
		sharp_knife = Silverware.new("sharp_knife")


		silverware_drawer.add_item(sharp_knife)

		silverware_drawer.view_contents

		removed_knife = silverware_drawer.remove_item(sharp_knife)
		removed_knife.eat
		removed_knife.clean_silverware 

		silverware_drawer.view_contents
		silverware_drawer.dump
		silverware_drawer.view_contents #What should this return? Contents of the drawer.  knife and spoon

	    fork = Silverware.new("fork")
		silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
		fork.eat

		#BONUS SECTION
	    puts fork.clean
    end

=begin
# DRIVER TESTS GO BELOW THIS LINE
    def assert
       raise "Assertion failed!" unless yield
    end
   
	   crabcraker1 = Silverware.new("crabcraker")

	   new_drawer = Drawer.new
	 
	   assert {new_drawer.open == true}

	   assert {new_drawer.close == false}

	   assert {crabcraker1.clean = true}

	   assert {crabcraker1.clean_silverwa = true}

=end

=begin
# 5. Reflection
     I really enjoyed this lesson.  Using the teminal to fing the problems and then fixing them
     was fun.  It made be become more comfortable with class, methods and instantiating objects.
     I love the idea of objects are created and how they can use the methods in the class.
=end

