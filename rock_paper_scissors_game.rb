require "./round"

class RockPaperScissorsGame
  def initialize(round)
    @round = round
  end

  def play
    loop do
      @round.game
    end
  end
end

round = Round.new
rock_paper_scissors_game = RockPaperScissorsGame.new(round)
rock_paper_scissors_game.play
