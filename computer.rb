class Computer 

  def move 
    @computer_answer = RockPaperScissorsGame::ANSWER_OPTIONS.shuffle.first
  end
end
