# U2.W4: Homework Cheater!

=begin

This can replicated for an actor, director or a cinematographer,in any film industry: hollywood,
bollywood, nollywood, tollywood, kollywood, lollywood, sandalwood....(yes! these are real film industries)

I worked on this challenge by myself.
 
 0.  Create a Template
       [name] is a legandary [nationality] actor, who was born in [city].  [pronoun] is well known
       for a wide range of roles [pronoun] played in many movies.  [pronoun] studied acting in the
       famous Actors Studio in NYC. The role [pronoun] played in [movie-name1] was what captulated
       [name] to stardom.  [pronoun] won an oscar for the role in [movie-name2].  [pronoun] was 
       married to [spouse_name] and had [number of childern] children. After [number] years in the
       film industry, he wrote a book called [name of book]. [pronoun] died in [DOD].  
       [name] is famous for his saying [quote].  We will miss [name]!.

Sub 1:  Actor
       [name] is a legandary [nationality] actor, who was born in [city].  [pronoun] is well known
       for a wide range of roles [pronoun] played in many movies.  [pronoun] studied acting in the
       famous Actors Studio in NYC. The role [pronoun] played in [movie-name1] was what captulated
       [name] to stardom.  [pronoun] won an oscar for the role in [movie-name2].  [pronoun] was 
       married to [spouse_name] and had [number of childern] children. After [number] years in the
       film industry, he wrote a book called [name of book]. [pronoun] died in [DOD].  
       [name] is famous for his saying [quote].  We will miss [name]!.

Sub 2:  Director
       [name] is a legandary [nationality] actor, who was born in [city].  [pronoun] is well known
       for a wide range of roles [pronoun] played in many movies.  [pronoun] studied acting in the
       famous Actors Studio in NYC. The role [pronoun] played in [movie-name1] was what captulated
       [name] to stardom.  [pronoun] won an oscar for the role in [movie-name2].  [pronoun] was 
       married to [spouse_name] and had [number of childern] children. After [number] years in the
       film industry, he wrote a book called [name of book]. [pronoun] died in [DOD].  
       [name] is famous for his saying [quote].  We will miss [name]!.

Sub 3:  Cinematograher
       [name] is a legandary [nationality] actor, who was born in [city].  [pronoun] is well known
       for a wide range of roles [pronoun] played in many movies.  [pronoun] studied acting in the
       famous Actors Studio in NYC. The role [pronoun] played in [movie-name1] was what captulated
       [name] to stardom.  [pronoun] won an oscar for the role in [movie-name2].  [pronoun] was 
       married to [spouse_name] and had [number of childern] children. After [number] years in the
       film industry, he wrote a book called [name of book]. [pronoun] died in [DOD].  
       [name] is famous for his saying [quote].  We will miss [name]!.

 2. Pseudocode

  Input: define the method essay_writer
         set the following argments
         (name, nationality, pronoun, movie_name1, movie_name2, 
         spouse_name, name_of_book, year_died, quote)
         Wrtie the code using string interpolation method

  Output:  The output will be the template but with replaced with arguments

  Steps:  
       * First wrote a general paragraph.
       * Inserted arguments where it was necessary
       * Wrote the driver test
       * Wrote the code
       * Refactored the code
       * Tested it on terminal using rspec

=end


# 3. Initial Solution
    def essay_writer(name, nationality, city, pronoun1, name_of_filminudstry, movie_1, pronoun2, 
        movie_2, spouse_name, number_of_childern, number, name_of_book, dod, quote)

        "#{name} is a legendary #{nationality} artist, who was born in #{city}.  
        #{name} is well known for #{pronoun2} significant contribution to 
        #{name_of_filminudstry}. The artistic contribution to the film #{movie_1}
        was what captulated #{name} to #{pronoun2} road to success.  #{name} won
        an oscar for #{pronoun2} work in #{movie_2}. #{name} was married to
        #{spouse_name} and has #{number_of_childern} children. After #{number}
        years in #{name_of_filminudstry}, #{pronoun1} wrote a book called 
        #{name_of_book} in #{dod}, a few years later #{pronoun1} died. #{name}
        is famous for #{pronoun2} saying #{quote}.We will miss #{name} immensely!."
    end



# 4. Refactored Solution
      def essay_writer(name, nationality, city, pronoun1, name_of_filminudstry, movie_1, pronoun2, 
        movie_2, spouse_name, number_of_childern, number, name_of_book, dod, quote)

        "#{name} is a legendary #{nationality} artist, who was born in #{city}.  
        #{name} is well known for #{pronoun2} significant contribution to 
        #{name_of_filminudstry}. The artistic contribution to the film #{movie_1}
        was what captulated #{name} to #{pronoun2} road to success.  #{name} won
        an oscar for #{pronoun2} work in #{movie_2}. #{name} was married to
        #{spouse_name} and has #{number_of_childern} children. After #{number}
        years in #{name_of_filminudstry}, #{pronoun1} wrote a book called 
        #{name_of_book} in #{dod}, a few years later #{pronoun1} died. #{name}
        is famous for #{pronoun2} saying #{quote}. We will miss #{name} immensely!."
    end


# 1. DRIVER TESTS GO BELOW THIS LINE
      p essay_writer(
                     "Dustin Hoffman", 
                     "American",
                     "New York City",
                     "Hollywood",
                     "The Graduate",
                     "his",
                     "Papillon",
                     "Diane Keaton",
                     "4",
                     "30",
                     "he",
                     "'My Story'", 
                     "2009", 
                     "'The two basic items necessary to sustain life are sunshine and coconut'")
=begin
output
Dustin Hoffman is a legendary American artist, who was born in New York City.Dustin Hoffman is well
known for Papillon significant contribution to The Graduate. The artistic contribution to the film
his was what captulated Dustin Hoffman to Papillon road to success.  Dustin Hoffman won an oscar
for Papillon work in Diane Keaton. Dustin Hoffman was married to 4 and has 30 children. After he
years in The Graduate, Hollywood wrote a book called 'My Story' in 2009, a few years later
Hollywood died. Dustin Hoffman is famous for Papillon saying 'The two basic items necessary to
sustain life are sunshine and coconut'. We will miss Dustin Hoffman immensely.

=end

      p essay_writer(
                     "Rekha", 
                     "Indian",
                     "Mumbai",
                     "Bollywood",
                     "Khubsoorat",
                     "her",
                     "Umrao Jaan",
                     "Vinod Mehra",
                     "2",
                     "25",
                     "she",
                     "'Kahaani'", 
                     "2012", 
                     "'Being alone is not necessarily being lonely!'")

=begin
output
Rekha is a legendary Indian artist, who was born in Mumbai.Rekha is well known for Umrao Jaan significant
contribution to Khubsoorat. The artistic contribution to the film her was what captulated Rekha to Umrao
Jaan road to success.  Rekha won an oscar for Umrao Jaan work in Vinod Mehra. Rekha was married to 2 and
has 25 children. After she years in Khubsoorat, Bollywood wrote a book called 'Kahaani' in 2012, a few
years later Bollywood died. Rekha is famous for Umrao Jaan saying 'Being alone is not necessarily being
lonely!'. We will miss Rekha immensely.
=end
      p essay_writer(
                     "Genevieve Nnaji", 
                     "Nigerian",
                     "Lagos",
                     "Nollywood",
                     "Camouflage",
                     "her",
                     "30 Days",
                     "Ramsey",
                     "2",
                     "12",
                     "she",
                     "'My Life'", 
                     "2012", 
                     "'Chocolates and cakes. My biggest problem!'")


=begin
output
Genevieve Nnaji is a legendary Nigerian artist, who was born in Lagos.Genevieve Nnaji is well known for
30 Days significant contribution to Camouflage. The artistic contribution to the film her was what
captulated Genevieve Nnaji to 30 Days road to success.  Genevieve Nnaji won an oscar for 30 Days
work in Ramsey. Genevieve Nnaji was married to 2 and has 12 children. After she years in Camouflage,
Nollywood wrote a book called 'My Life' in 2012, a few years later Nollywood died. Genevieve Nnaji
is famous for 30 Days saying 'Chocolates and cakes. My biggest problem!'. We will miss Genevieve
Nnaji immensely.
=end


# 5. Reflection 
=begin
 Initially I was confused about writing driver codes, I thought we had to write codes like
 the ones that were given to us in week3.  But google+ community and my accountability
 group were a real help in sorting this issue.  When I started, I was figuring out what
 the output needed to be and how best it can be used for different person/subject etc.
 Once I got that part, the rest was making sure I got the pronouns in the right place.
 I found thi new learnign experience a good place to start using driver codes. It was not very
 tedious, but I had to make sure there were no mistakes.  Also, it did not require much refacotring.
 Overall, I did enjoy it, as always it take me longer to understand and get things done.

=end
