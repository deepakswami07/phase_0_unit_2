# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode
=begin
* SET class Song
* INITIALIZE with two parameters song_name and artist
* SET attribut reader to song_name and artist
* DEFINE a method play that puts with song name

* SET class Playlist
* SET attribute reader to song_list
* INITIALIZE with one parameter with a splat parameter songs, create a empty array equal to songlist, 
   iterate using each method to push songs to son_list array
* DEFINE method add with one parameter with a splat parameter songs, iterate using each method to push songs to son_list array
* DEFINE method num_of_tracks and use the length method to find the length of the song_list
* DEFINE method includes? with one spalt argument songs.  USE if/else to return boolean is song is present in song_list
* DEFINE methos remove with one splat parameter songs.  Iterate using each to an dusing the .delete method to delete song
* DEFINE method play_all.  Shuffle song_list and Iterate using each to play all the songs
* DEFINE method display. returns playlist to show the list of songs.


=end

# Initial Solution
class Song
	attr_reader :song_name, :artist

		def initialize(song_name, artist)
		@song_name = song_name
		@artist = artist
		end

		def play
			puts "Now you are listening to #{song_name} by #{artist}"
		end
end
	   
	class Playlist
		attr_reader :song_list

		def initialize(*songs)
			@song_list = []
			songs.each {|x| @song_list << x}
		end

		def add(*songs)
			songs.each {|x| @song_list << x}
		end

		def num_of_tracks
			@song_list.length
		end


		def includes?(*songs)
			if @song_list.include?("song")
				return true
			else
				return false
			end
		end


		def remove(*songs)
			songs.each {|song| song_list.delete(song)}
		end


		def play_all
			song_list.shuffle.each {|song| song.play}
		end


		def display
			@song_list
		end
end

# Refactored Solution
# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
p my_playlist.num_of_tracks == 3

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
p my_playlist.num_of_tracks == 3

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5

going_under.play
angels.play

my_playlist.remove(angels)
p my_playlist.num_of_tracks == 4

p my_playlist.num_of_tracks

p my_playlist.includes?(lying_from_you) == true

p my_playlist.play_all

p my_playlist.display


# Reflection 
=begin
I spent a lot of time with this exercises.  Even though I completed pez dispenser, I decided to try this exercise
as I needed to get a better understanding of class.  The difficulty I had was understanding how two different 
classes commnicated with each other.  This was something I encountered with drawer/silverware exercise.  But I later
figured out that once an object is created, even though it can use the methods from it's own class, it can also
access methods from other classes.  I hope I am understanidnthsi correctly. I am slowly beginning to get a hang of 
how class works in ruby.
=end