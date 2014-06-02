# U2.W6: Create a BoggleBoard Class


# I worked on this challenge wiht Farheen Malik.

=begin
# 2. Pseudocode
	 * Set Class
	 * Set attribute reader to board, row, column
	 * Define method initialize, method takes argument(board)
	 * Define method get_row, method takes 1 argument
	 * Return row
	 * Define method get_column, method takes argument
	 * Use .map method to iterate column
	 * Define method create_word  with one argument
	 * Use map method to iterate to pick two coordinates, use join method to make a string of the letters.
	 * Set method get_diagonal, takes one argument.
	 * Use map method to iterate to pick two coordinates

=end

# 3. Initial Solution
class BoggleBoard
  attr_reader :board, :row, :column_number
 
  def initialize(board)
      @board = board
  end
  
  def create_word(*coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end
  
  def get_row(row)
      @row = row
      @board[row]
  end
  
  def get_column(column_number)
      board.map {|element| element[column_number]}
  end
 
end
 
 
# 4. Refactored Solution
	class BoggleBoard
		attr_reader :board, :row, :column_number

		def initialize(board)
			  @board = board
		end

		
		def get_row(row)
			board[row]
		end


		def get_column(column_number)
			board.map {|element| element[column_number]}
		end
        

        def create_word(*coords)
			coords.map { |coord| board[coord.first][coord.last]}.join("")
			end

		# Optimize Your Learning

		def get_diagonal(*coords)
			coords.map { |coord| board[coord.first][coord.last]}
		end
      
	end
 
	dice_grid = [["b", "r", "a", "e"],
	             ["i", "o", "d", "t"],
	             ["e", "c", "l", "r"],
	             ["t", "a", "k", "e"]]

 
# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
	boggle_board_test = BoggleBoard.new(dice_grid)
	p boggle_board_test.get_row(0) == ["b", "r", "a", "e"]
	p boggle_board_test.get_column(1) == ["r", "o", "c", "a"]

	p boggle_board_test.create_word([1,2],[1,1],[2,1],[3,2])
	p boggle_board_test.create_word([3,2]) == "k"
	p boggle_board_test.get_diagonal([0,0], [1,1], [2,2], [3,3]) == ["b","o","l","e"]

=begin
# 5. Reflection 
  We had to turn the three individual methods we had completed last week into a single class.
  Sine this was going to be class, each of the methods had to have only one argument 
  unlike methods last week, which has two arguments.  Since we were building a class,
  once the nested array was intialized, we could use it in the methods without having to
  to use it as a second argument.  I defintely became more comfortable with nested arrays.
  I can't say I am completely confident, but I am getting better by the day.  
=end