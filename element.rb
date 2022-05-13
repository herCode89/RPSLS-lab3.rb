class Element
    attr_accessor :name


    def initialize(name)
        @name = name
    end

    def compare_to()
        fail "This method should be overridden "
    end
end

class Rock < Element
    def compare_to(thing)
        #puts 'this',thing.name

        if thing.name == "Rock"
            return "Rock equals Rock", "Tie"
        elsif thing.name == "Paper"
            return "Paper covers Rock", "Lose"
        elsif thing.name == "Scissors"
            return "Rock crushes Scissors", "Win"
        elsif thing.name == "Lizard"
            return "Rock crushes Lizard", "Win"
        elsif thing.name == "Spock"
            return "Spock vaporizes Rock", "Lose"
        end
    end
end


    class Paper < Element
        def compare_to(thing)
            if thing.name == "Paper"
                return "Paper equals Paper", "Tie"
            elsif thing.name == "Rock"
                return "Paper covers Rock", "Win"
            elsif thing.name == "Scissors"
                return "Scissors cut Paper", "Lose"
            elsif thing.name == "Lizard"
                return "Lizard eats Paper", "Lose"
            elsif thing.name == "Spock"
                return "Paper disproves Spock", "Win"
            end
        end
    end

    class Scissors < Element
        def compare_to(thing)
            if thing.name == "Scissors"
                return "Scissors equals Scissors", "Tie"
            elsif thing.name == "Paper"
                return "Scissors cut Paper", "Win"
            elsif thing.name == "Rock"
                return "Rock crushes Scissors", "Lose"
            elsif thing.name == "Lizard"
                return "Scissors decapitate Lizard", "Win"
            elsif thing.name == "Spock"
                return "Spock smashes Scissors", "Lose"
            end
        end
    end
 
    class Lizard < Element
        def compare_to(thing)
            if thing.name == "Lizard"
                return "Lizard equals Lizard", "Tie"
            elsif thing.name == "Paper"
                return "Lizard eats Paper", "Win"
            elsif thing.name == "Scissors"
                return "Scissors decapitate Lizard", "Lose"
            elsif thing.name == "Rock"
                return "Rock crushes Lizard", "Lose"
            elsif thing.name == "Spock"
                return "Lizard poisons Spock", "Win"
            end
        end
    end

    class Spock < Element
        def compare_to(thing)
            if thing.name == "Spock"
                return "Spock equals Spock", "Tie"
            elsif thing.name == "Paper"
                return "Paper disproves Spock", "Lose"
            elsif thing.name == "Scissors"
                return "Spock smashes Scissors", "Win"
            elsif thing.name == "Lizard"
                return "Lizard poisons Spock", "Lose"
            elsif thing.name == "Rock"
                return "Spock vaporizes Rock", "Win"
            end
        end
    end



 #rock  = Rock.new('Rock')
 #paper = Paper.new('Paper')
# puts rock.compare_to(paper)
 #puts paper.compare_to(rock)
 #puts rock.compare_to(rock)

 
=begin    
    def compare_to(thing)
        #puts thing.name
        if thing.name == "Paper"
            return "Paper covers Rock", "Lose"
        elseif thing.name == "Rock"
            return "Rock hits Rock", "Tie"
        elseif thing.name == "Scissors"
            return "Rock hits Scissors", "Win"
        elseif thing.name == "Lizard"
            return "Rock smashes Lizard", "Win"
        else 
            return "Spock vaporizes Rock", "Lose"
        end
    end
end
=end