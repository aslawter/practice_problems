require "./round"

class RockPaperScissorsGame
  STARTING_ROUND = 1

  def initialize(round)
    @round = round
  end

  def play
    current_round = STARTING_ROUND
    loop do
      puts "Round: #{current_round}"
      @round.play
      current_round = current_round + 1
    end
  end
end

round = Round.new
rock_paper_scissors_game = RockPaperScissorsGame.new(round)
rock_paper_scissors_game.play
