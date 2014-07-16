require "./database_generator.rb"

class HotelFinder
  def initialize(hotels)
    @hotels = hotels
  end

  def run
    print_instructions
    perform_search
    print_results
  end

  def print_instructions
    puts "Search for hotel information"
    puts "Please enter a hotel name"
    print ">"
  end

  def perform_search
    customer_search = gets.chomp
  end

  def print_results
    search_results = @hotels[customer_search] || NullHotel.new
    puts search_results
  end
end

hotels = DatabaseGenerator.new("hotels.csv")
hotel_finder = HotelFinder.new(hotels)
