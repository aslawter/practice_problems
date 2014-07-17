class Computer 
  ANSWER_OPTIONS = ["rock", "paper", "scissors"]

  def move 
    @computer_answer = ANSWER_OPTIONS.shuffle.first
  end
end
