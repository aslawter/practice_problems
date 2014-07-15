require "./deck"
require "./player"

CARDS_FOR_FIVE_CARD_STUD = 5

class Poker
  def initialize(deck)
    @deck= deck 
    @players = []
  end

  def play
    identify_players
    deal
    # print_hands
  end

  def identify_players
    puts "Enter the number of players for this game"
    print ">"
    number_of_players = gets.chomp
    create_players(number_of_players)
  end

  def create_players(number_of_players)
    player_number = 1
    number_of_players.to_i.times do |player|
      @players.push(Player.new(player_number))
      player_number = player_number + 1
    end
  end

  def deal
    @players.each do |player_hands|
      player_hand = @deck.draw(CARDS_FOR_FIVE_CARD_STUD)
      @deck = @deck.remove_drawn_cards(player_hand)
    end
  end

  def display_hand
    @players.each do |reveal|
      player_hands[0] = player_number
    end
  end
end
  deck = Deck.new
  poker = Poker.new(deck)
  poker.play
