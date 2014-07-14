class Poker
  def initialize(deck)
    @deck = deck
  end

  def play
    select_number_of_players
    create_hands
    deal
    print_hands
  end

  def select_number_of_players
    puts "Enter the number of players for this game"
    print ">"
    number_of_players = gets.chomp
  end

 # def create_hands
 #   @players.each do |player|
 #     player.deal
 #   end
 #  end

  1.upto(@players) do |hands|
    hands
  end

  end

end

class Deck
  def initialize(@cards)
    @deck = cards.shuffle
  end

class Card
  def initialize 
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

class Player
  def initialize(number_of_players)
      @players = number_of_players
  end
end

poker = Poker.new(deck)
poker.play
