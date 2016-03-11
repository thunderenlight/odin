class Hangman

	# def initialize(options)
	# 	@id = options[:id]
	# 	@word = options[:word]
	# end

	def initialize
		@dict = []
		@word = " "
		@wrong_guesses = []
		@game = []
		@guess_count = 0
	end

	def create_word
	end


	def open_dictionary
		
	File.open("5desk.txt").readlines.each do |line|
			if line.strip.length >= 5 && line.strip.length <= 12
				@dict << line
			end
		end
	end

	def pick_word
		@word = @dict.sample
	end

	def win?
		@game == @word
	end

	def choose_letter
	end

	def display_game

		@word.split("").each do |letter|
			if letter == @guess
				@game << "#{ @guess }"
			else
				@game << " _ "
			end
			 puts @game 
		end
	end

	def guess
		puts "pick a letter"
		@guess = gets.downcase.chomp
	end
	# def intro
	# 	# for every letter in word display _
	# 	@word.length.times do 

	# 		@game << " __ "
	# 	end
	# 	puts @game
	# end

	def check_guess
		@word.include?(@guess)

	end







end


test = Hangman.new
test.open_dictionary
puts test.pick_word
# test.intro
test.guess
puts test.display_game
puts test.check_guess
