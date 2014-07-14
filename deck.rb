require "./card"

class Deck
  def initialize
    create_deck
    @cards = @cards
  end

  def create_deck
    suits = ["Hearts", "Spades", "Diamonds", "Clubs"]
    ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K", "A"]

    @cards = []
    suits.each do |suit|
      ranks.each do |rank|
        @cards.push(Card.new(rank, suit))
      end
    end
  end

  def display 
    @cards.each do |card|
      card.display
    end
    puts @cards.size
  end
  
end
