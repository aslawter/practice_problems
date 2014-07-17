require './computer'

class RockPaperScissorsGame
  def initialize(computer)
    @computer = computer
  end

  def play
    loop do
      state_rules
      ask_for_player_move
      validate_player_move
      interpret_player_answer
      generate_computer_answer
      compare_results
      declare_winner
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
    answer_options = ["rock", "paper", "scissors"]
    @valid_response = answer_options.include? @player_move || @player_move == "q"
    while @player_move != @valid_response
     puts "Sorry, please enter a valid response"
     @player_answer = gets.chomp
    end
  end
  
  def interpret_player_answer
    if @player_move == "q"
      exit
    end
  end

  def generate_computer_answer
    @computer_move = @computer.move
  end

  def compare_results
    puts "comparing results"
  end

  def declare_winner

  end
end

computer = Computer.new
rock_paper_scissors_game = RockPaperScissorsGame.new(computer)
rock_paper_scissors_game.play
