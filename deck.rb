class Deck
  def initialize(@cards)
    @deck = cards.shuffle
  end

  def make_cards 
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
