# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array
=begin

 Pseudocode
 * Define a Method
 * Set two arguments to the method
 * First argument is the array, the second argument is the inner arrray (2D)
 * Iterate the array using the MAP method
 * Find intersection of rows and coloums using .first(row) and .last method(coloumn)

=end

# Initial Solution
def word_maker(board, *coordinates)
    word = coordinates.map { |x| board[x.first][x.last]}
    word.join("")
  end

# Refactored Solution
  def word_maker(board, *coordinates)
    coordinates.map { |x| board[x.first][x.last]}.join("")
  end

# DRIVER TESTS GO BELOW THIS LINE

p word_maker(boggle_board, [1,2], [1,1], [2,3], [3,2]) == "dork"
p word_maker(boggle_board, [2,1], [1,1], [0,1], [3,1], [2,2]) == "coral"
p word_maker(boggle_board, [3,0], [3,1], [3,2], [3,3]) == "take"

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.# Initial Solution
  def get_row(board,row)
    board[row] 
  end

# Refactored Solution
  def get_row(board,row)
    board[row] 
  end

# DRIVER TESTS GO BELOW THIS LINE
  p get_row(boggle_board,3) ==  ["t", "a", "k", "e"]

  p get_row(boggle_board,0) == ["b", "r", "a", "e"]

  p get_row(boggle_board,1) == ["i", "o", "d", "t"] 

=begin
# Reflection 
          At first it seemed pretty simple, but I soon realised there was a catch.
          I tried different ways to do this but they seemed a get lot complicated and I
          knew there had to be a simpler method.  One of the boots posted that he used
          two arguments to solve this problem.  I tried it using the array as one 
          argument and the row as the other and was able to do it.
=end

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

=begin
# Pseudocode
  Define a method get_coloumn
  Assign two arguments to the method(board, coloumn)
  Use the map method to iterate through the rows to pick the coloumn
=end

# Initial Solution

	  def get_coloumn(board,col)
	      board.map do |row| row[col]
	  end
	  end

# Refactored Solution
	  def get_coloumn(board,col)
	      board.map { |row| row[col] } 
	  end

# DRIVER TESTS GO BELOW THIS LINE
 p get_coloumn(boggle_board,1) == ["r", "o", "c", "a"]

 p get_coloumn(boggle_board,0) == ["b", "i", "e", "t"]

 p get_coloumn(boggle_board,2) == ["a", "d", "l", "k"]

=begin
# Reflection 
  Once I was able to figure out that the two arguments part, I tried to do the
  	same using jsut column, but that did not work.  As I later realised
  	that to fins a coloumn you need the go along the rows to pick your
  	column.  Once I understood this I was able to complete it.
=end


