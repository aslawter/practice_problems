class Poker
  def initialize(deck)
    @deck = deck
  end

  def play
    identify_players
    create_players
    deal_cards
    print_hands
  end

  def identify_players
    puts "Enter the number of players for this game"
    print ">"
    number_of_players = gets.chomp
    number_of_players = number_of_players.to_i
  end
  
  def create_players
    @players= []
    number_of_players.times do |player|
      @people_playing.push(Player.new(player + 1) 
    end
  end
  
  def deal_cards
     
    1.upto(@players) do |hands|
      hands
  end
end


poker = Poker.new(deck)
poker.play
