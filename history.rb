class History

    attr_accessor :plays
    attr_accessor :opponent_plays
    attr_accessor :score

    def initialize()
        @plays = Array.new
        @opponent_plays = Array.new
        @score = 0
    end

    def log_play(move)
        @plays.push(move)
    end

    def log_oppenent_play(move)
        @opponent_plays.push(move)
    end

    def add_score()
        @score += 1
        # return @score
    end
end

# history = History.new()
# puts history.add_score()
# puts history.score
# puts history.log_play
# puts histor.log_oppenent_play