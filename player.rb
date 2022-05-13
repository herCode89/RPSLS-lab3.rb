require_relative "element"
require_relative "history"

#rock  = Rock.new('Rock')
#paper = Paper.new('Paper')


class Player 

    attr_reader :name, :history
    #attr_reader :name
    #attr_reader :history
    attr_reader :robot
    attr_reader :players_turn

    def initialize(name, history)
        @name = name
        @history = history
        @robot = 0
        @players_turn = 0
    end

    def play()
        fail "This method should be overridden"
    end
end 

class StupidBot < Player
    def play()
        return Rock.new("Rock")
        # @history.log_play
        # return $player1
    end
end

class RandomBot < Player
    def play()
        bot = Random.new()
        #move = bot.rand(5)
        move = bot.rand(0..6)

        case move
        when 1 then
            #return "Rock"
            return Rock.new("Rock")
        when 2 then
            #return "Paper"
            return Paper.new("Paper")
        when 3 then 
            #return "Scissors"
            return Scissors.new("Scissors")
        when 4 then 
            #return "Lizard"
            return Lizard.new("Lizard")
        else 
            #return "Spock"
            return Spock.new("Spock")
        end
    end
end

class IterativeBot < Player
    def play()
        @robot += 1
        @robot = @robot % 5
        case @robot
        when 1 then
            return Rock.new('Rock')
        when 2 then
            return Paper.new('Paper')
        when 3 then
            return Scissors.new('Scissors')
        when 4 then
            return Lizard.new('Lizard')
        when 0 then
            return Spock.new('Spock')
            
        end
    end
end

class LastPlayBot < Player
    def play()
        if @history.opponent_plays.empty?
            return Rock.new('Rock')
        else
            return @history.opponent_plays.last
        end
=begin
        if history.opponent_plays.empty?
            return Paper.new(Paper)
        else
            return history.opponent_plays.last
        end
        if history.opponent_plays.empty?
            return Scissors.new(Scissors)
        else
            return history.opponent_plays.last
        end
        if history.opponent_plays.empty?
            return Lizard.new(Lizard)
        else
            return history.opponent_plays.last
        end
        if history.opponent_plays.empty?
            return Spock.new(Spock)
        else
            return history.opponent_plays.last
        end
=end
    end
end

class Human < Player
    def play()
       # while true
            puts "(1) Rock\n(2) Paper\n(3) Scissors\n(4) Lizard\n(5) Spock"
            #puts "(2) Paper"
            #puts "(3) Scissors"
            #puts "(4) Lizard"
            #puts "(5) Spock"
            
           # puts @players_turn
            @players_turn = (print 'Enter your move: '; gets&.rstrip)
            #puts @players_turn
            if @players_turn.to_i >= 1 || @players_turn.to_i <= 5
                #puts "Enter your move: "
                case @players_turn.to_i
                when 1 then 
                    return Rock.new("Rock")
                when 2 then
                    return Paper.new("Paper")
                when 3 then
                    return Scissors.new("Scissors")
                when 4 then
                    return Lizard.new("Lizard")
                when 5 then
                    return Spock.new("Spock")
                end
                #@players_turn = (print "Enter your move: "; gets&.rstrip)
                
            if @players_turn.to_i <= 5
               # @players_turn = (print "Invalid choice(s) - start over")
            else
               puts "Invalid move - try again"
                play()
            end
            #else 
             #   break
        end
       # end
        
        #else
           # puts "Invalid choice(s) - start over"
            #@players_turn = (print "Invalid choice(s) - start over")

    end
end


=begin
p1 = StupidBot.new('StupidBot', History.new)
p2 = RandomBot.new('RandomBot', History.new)
p1move = p1.play()
p2move = p2.play()
puts p1move.compare_to(p2move)
=end


=begin
def initialize()
    super('StupidBot', History.new())
end

def play()
    elem = Element[0]
    history.log_play(elem)
    return elem
end
    # @history.log_play
    # return $player1
end
=end
# https://ruby-doc.org/core-2.6/Random.html
# https://medium.com/@janaeelisa/randomness-in-ruby-42bf20668634