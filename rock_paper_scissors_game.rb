require './computer'

class RockPaperScissorsGame
  PLAYER_VERSUS_COMPUTER_RESULTS = {
    "rock" => {"rock" => "Draw, no winner",
               "paper" => "Computer wins!",
               "scissors" => "You win" },
    "paper" => {"paper" => "Draw, no winner",
                "scissors" => "Computer wins!",
                "rock" => "You win!" },
    "scissors" => {"scissors" => "Draw, no winner",
                   "rock" => "Computer wins!",
                   "paper" => "You win"},
  }

  ANSWER_OPTIONS = PLAYER_VERSUS_COMPUTER_RESULTS.keys
  VALID_INPUT = ANSWER_OPTIONS + ["q"]

  def initialize(computer)
    @computer = computer
  end

  def play
    loop do
      state_rules
      ask_for_player_move
      validate_player_move
      exit_on_quit
      generate_computer_move
      compare_results
    end
  end

  def state_rules
    puts "Let's play rock, paper, scissors."
    puts "Enter rock, paper, scissors, or q to quit."
  end

  def ask_for_player_move
    print "What's your move? > "
    @player_move = gets.chomp.downcase
  end

  def validate_player_move
    until VALID_INPUT.include?(@player_move)
      print "Sorry, please enter a valid response > "
      @player_move = gets.chomp.downcase
    end
  end

  def exit_on_quit
    if @player_move == "q"
      exit
    end
  end

  def generate_computer_move
    @computer_move = ANSWER_OPTIONS[@computer.move]
  end

  def compare_results
    puts "The computer put #{@computer_move}"
    puts PLAYER_VERSUS_COMPUTER_RESULTS[@player_move][@computer_move]
    puts "End of game."
    puts "-------------------"
  end
end

computer = Computer.new
rock_paper_scissors_game = RockPaperScissorsGame.new(computer)
rock_paper_scissors_game.play
