require_relative "element"   # uncomment to load element.rb
require_relative "player"    # uncomment to load player.rb
require_relative "history"   # uncomment to load history.rb

#########################################
#     CS 381 - Programming Lab #3		#
#										#
#  < Frankie Herbert >					#
#  < herbertf@oregonstate.edu >	        #
#										#
#########################################



# your code here

# need to initialize


def game(n_rounds)
	puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
	puts "\nPlease choose two players:"
	puts "(1) StupidBot\n(2) RandomBot\n(3) IterativeBot\n(4) LastPlayBot\n(5) Human"
	#puts "(2) RandomBot"
	#puts "(3) IterativeBot"
	#puts "(4) LastPlayBot"
	#puts "(5) Human"


	choice_map = {
		1 => "StupidBot",
		2 => "RandomBot",
		3 => "IterativeBot",
		4 => "LastPlayBot",
		5 => "Human"
	}

	if @player1.to_i >= 1 || @player1.to_i <= 5
	#if @player1.to_i = 1 || @player1.to_i = 2 || @player1.to_i = 3 || @player1.to_i = 4 || @player1.to_i = 5
		#puts ("Select player 1: ")
		@player1 = (print 'Select player 1: '; gets&.rstrip)
	#if @player2.to_i = 1 || @player2.to_i = 2 || @player2.to_i = 3 || @player2.to_i = 4 || @player2.to_i = 5
	if @player2.to_i >= 1 || @player2.to_i <= 5
		#puts "Select player 2: "
		@player2 = (print 'Select player 2: '; gets&.rstrip)
	end
	if @player1.to_i >= 1 && @player1.to_i <= 5 && @player2.to_i >= 1 && @player2.to_i <= 5 
		puts "#{choice_map[@player1.to_i]} vs. #{choice_map[@player2.to_i]}\n\n"
	else
		puts "Invalid choice(s) - start over\n\n"
		game(n_rounds)
	end

	
	


	case choice_map[@player1.to_i]
		when "StupidBot" then
			player1 = StupidBot.new(choice_map[@player1.to_i], History.new)
		when "RandomBot" then
			player1 = RandomBot.new(choice_map[@player1.to_i], History.new)
		when "IterativeBot" then
			player1 = IterativeBot.new(choice_map[@player1.to_i], History.new)
		when "LastPlayBot" then
			player1 = LastPlayBot.new(choice_map[@player1.to_i], History.new)
		when "Human" then
			player1 = Human.new(choice_map[@player1.to_i], History.new)
	end
	case choice_map[@player2.to_i]
		when "StupidBot" then
			player2 = StupidBot.new(choice_map[@player2.to_i], History.new)
		when "RandomBot" then
			player2 = RandomBot.new(choice_map[@player2.to_i], History.new)
		when "IterativeBot" then
			player2 = IterativeBot.new(choice_map[@player2.to_i], History.new)
		when "LastPlayBot" then
			player2 = LastPlayBot.new(choice_map[@player2.to_i], History.new)
		when "Human" then
			player2 = Human.new(choice_map[@player2.to_i], History.new)
	end
	p1_moves = Rock.new('Rock')
	p2_moves = Rock.new('Rock')
	i = 0
	while(i < n_rounds) # increment the rounds of the game ends at n_rounds 5
			puts "Round #{i+1}:"
			
			
			# Player 1
			#player1 = p1_moves.play()
			p1_moves = player1.play()
			p2_moves = player2.play()
			

			puts "Player 1 chose #{p1_moves.name}"
			puts "Player 2 chose #{p2_moves.name}"
			player1.history.log_play(p1_moves)
			player1.history.log_oppenent_play(p2_moves)
			
			
			# Player 2
			#player2 = p2_moves.play()
			#p2_moves = player2.play()
			#puts "Player 2 chose #{p2_moves.name}"
			player2.history.log_play(p2_moves)
			player2.history.log_oppenent_play(p1_moves)
			
			#puts p1_moves
			#puts p2_moves
			record = p1_moves.compare_to(p2_moves)
			#puts record
			if record[1] == "Win"
				#puts p1_moves.compare_to(player2)[0]
				puts record[0]
				puts "Player 1 won the round"
				player1.history.add_score
				
			#end
			elsif record[1] == "Lose"
				puts record[0]
				puts "Player 2 won the round"
				player2.history.add_score
			#end
			else #p1_moves.compare_to(p2_moves)[1] == "Tie"
				puts record[0]
				puts "Round was a tie"
			end
			i += 1
		end
		#puts ""
		puts "\nFinal score is #{player1.history.score} to #{player2.history.score}"
		if player1.history.score > player2.history.score
			puts "Player 1 wins"
			#game(n_rounds)

		elsif player1.history.score < player2.history.score
			puts "Player 2 wins"
			#game(n_rounds)
		else
			player1.history.score == player2.history.score
			puts "Game was a draw"
			#game(n_rounds)
		end
	end
end



# Main Program (should be last)
n_rounds = 5
# call to kick off the game
game(n_rounds)


#puts p1_moves.name
	#puts p2_moves.name
	#puts p1_moves.compare_to(p2_moves)

=begin
	case @player1
	when 1
		return StupidBot.new(StupidBot, History.new)
	when 2
		return RandomBot.new(RandomBot, History.new)
	when 3
		return IteractiveBot.new(IteractiveBot, History.new)
	when 4
		return LastPlayBot.new(LastPlayBot, History.new)
	when 5
		return Human.new(Human, History.new)
	end

	case @player2
	when 1
		return StupidBot.new(StupidBot, History.new)
	when 2
		return RandomBot.new(RandomBot, History.new)
	when 3
		return IteractiveBot.new(IteractiveBot, History.new)
	when 4
		return LastPlayBot.new(LastPlayBot, History.new)
	when 5
		return Human.new(Human, History.new)
=end

=begin
	case [@player1.to_i]
	when {1 => "StupidBot"}
		player1 = StupidBot.new(StupidBot, History.new)
	when {2 => "RandomBot"}
		player1 = RandomBot.new(RandomBot, History.new)
	when {3 => "IteractiveBot"}
		player1 = IteractiveBot.new(IteractiveBot, History.new)
	when {4 => "LastPlayBot"}
		player1 = LastPlayBot.new(LastPlayBot, History.new)
	when {5 => "Human"}
		player1 = Human.new(Human, History.new)
	end

	case [@player2.to_i]
	when {1 => "StupidBot"}
		player2 = StupidBot.new(StupidBot, History.new)
	when {2 => "RandomBot"}
		player2 = RandomBot.new(RandomBot, History.new)
	when {3 => "IteractiveBot"}
		player2 = IteractiveBot.new(IteractiveBot, History.new)
	when {4 => "LastPlayBot"}
		player2 = LastPlayBot.new(LastPlayBot, History.new)
	when {5 => "Human"}
		player2 = Human.new(Human, History.new)
=end
