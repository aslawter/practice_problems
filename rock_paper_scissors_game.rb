require './computer'

class RockPaperScissorsGame
  def initialize(computer)
    @computer = computer
    @answer_options = ["rock", "paper", "scissors"]
    @valid_input = @answer_options + ["q"]
  end

  def play
    loop do
      state_rules
      ask_for_player_move
      validate_player_move
      interpret_player_response
      generate_computer_move
      compare_results
      print_results
    end
  end

  def state_rules
    puts "Let's play rock, paper, scissors."
    puts "Enter rock, paper, scissors, or q to quit."
  end

  def ask_for_player_move
    print "What's your move? > "
    @player_move = gets.chomp
  end

  def validate_player_move
    until @valid_input.include?(@player_move)
      print "Sorry, please enter a valid response > "
      @player_move = gets.chomp
    end
  end

  def interpret_player_response
    if @player_move == "q"
      exit
    end
  end

  def generate_computer_move
    @computer_move = @answer_options[@computer.move]
  end

  def compare_results
    player_versus_computer_results = {
      "rock" => {"rock" => "Draw, no winner",
                 "paper" => "Computer wins!",
                 "scissors" => "You win" },
      "paper" => {"paper" => "Draw, no winner",
                  "scissors" => "Computer wins!",
                  "rock" => "You win!" }
      "scissors" => {"scissors" => "Draw, no winner",
                     "rock" => "Computer wins!",
                     "paper" => "You win"},
    }
    puts player_versus_computer_results[@player_move][@computer_move]
  end

 def print_results
    puts "The computer put #{@computer_move}"
    puts "The winner is: #{@winner}"
    puts "End of game."
    puts
  end
end

computer = Computer.new
rock_paper_scissors_game = RockPaperScissorsGame.new(computer)
rock_paper_scissors_game.play
