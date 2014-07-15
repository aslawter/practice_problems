class Player
  def initialize(player_number)
    @player_number = player_number 
  end

  def name
   "Player number:" + player_number.to_s
  end
end

