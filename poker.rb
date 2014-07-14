class Poker
  def initialize(deck)
    @deck = Deck.new
  end

  def play
    select_number_of_players
    deal_cards
    create_hands
    print_hands
  end

  def select_number_of_players
    puts "Enter the number of players for this game" 
    print ">"
    number_of_players = gets.chomp
  end 

  def create_hands
    @players.each do |player|
      player.deal
    end
    
  end

end

class Deck
  def initialize(cards)
    @cards = cards.shuffle
  end

  cards = {"hearts" => [array_of_hearts], "spades" => [array_of_spades], "diamonds" => [array_of_diamonds], "clubs" => [array_of_clubs]}
  suites = ["hearts", "spades", "diamonds", "clubs"]
  

  class Player
    def initialize(number_of_players)
      @players = Players.all

    end
  end

  poker = Poker.new(deck)
  poker.play
