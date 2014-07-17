require './answer'

class RockPaperScissorsGame
  def initialize
  end

  def play
    loop do | game |
      generate_answer
      state_rules
      ask_player_for_move
      make_player_move
      compare_results
      print_results
      declare_winner
    end
  end

  def generate_answer
    @game_answer = Answer.new
  end

  def state_rules
    puts "Let's play rock, paper, scissors"
    puts "Enter rock, paper, scissors, or q to quit"
  end

  def ask_player_for_move
    print "What's your move? > "
    @player_answer = gets.chomp
  end

  def validate_answer
    valid_answer = Answer::OPTIONS.include? @player_answer
    if @player_answer != valid_answer
      if @player_answer == "q"
        exit
      elsif
        puts "Sorry, please enter a valid response"
        @player_answer = gets.chomp
       end
    end
  end

  def make_player_move
    compare_results
  end
end

def compare_results

end
def print_results

end
def declare_winner

end

rock_paper_scissors_game = RockPaperScissorsGame.new
rock_paper_scissors_game.play
