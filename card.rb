class Card
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def display
    puts @rank.inspect
    puts @suit.inspect
  end
end
