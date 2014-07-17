require './computer'

class RockPaperScissorsGame
  ANSWER_OPTIONS = ["rock", "paper", "scissors"]
  
  def play
    loop do
      state_rules
      ask_for_player_move
      make_player_move
      generate_computer_answer
      compare_results
      print_results
      declare_winner
    end
  end

  def state_rules
    puts "Let's play rock, paper, scissors"
    puts "Enter rock, paper, scissors, or q to quit"
  end

  def ask_for_player_move
    print "What's your move? > "
    @player_answer = gets.chomp
  end
  
  def validate_answer
    valid_answer = ANSWER_OPTIONS.include? @player_answer || @player_answer == "q"
    while @player_answer != valid_answer
     puts "Sorry, please enter a valid response"
     @player_answer = gets.chomp
    end
  end

  def make_player_move
    compare_results
  end

  def generate_computer_answer
    @computer_answer = Computer.move
  end

  def compare_results

  end

  def print_results

  end

  def declare_winner

  end

  rock_paper_scissors_game = RockPaperScissorsGame.new
  rock_paper_scissors_game.play
