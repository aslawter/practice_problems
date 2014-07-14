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

class Deck
  def initialize(@cards)
    @deck = cards.shuffle
  end

  def whatever_fix_this
    suites = ["Hearts", "Spades", "Diamonds", "Clubs"]
    ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K", "A"]

    @cards = []
    suits.each do |i|
      ranks.length.times do |i|
        @cards.push(Card.new(ranks[i], suit, (i + 1)))
      end
    end
  end
end

class Card
  def initialize(ranks, suit

  end
end

# Card.new => error
# Card.new(rank, suit) => no error

class Player
  def initialize
    player = Player.new
end

poker = Poker.new(deck)
poker.play
