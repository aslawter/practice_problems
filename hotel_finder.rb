require "csv"

class HotelFinder
  def initialize(filename)
    @filename = filename
  end

  def run
    collect_hotel_info
    print_instructions
    perform_search
    print_results
  end

  def collect_hotel_info 
    @hotels = {}
    CSV.foreach(@filename, headers: true) do |row|
      name = row["Hotel"]
      city = row["City"]
      phone = row["Phone Number"]
      singles = row["Number of Singles"]
      doubles = row["Number of Doubles"]
      hotels[name] = (city, phone, singles, doubles)
    end
  end 
  
  def print_instructions
    puts "Search for hotel information"
    puts "Please enter a hotel name"
    print ">"
  end

  def perform_search

  end

  def print_results
  end
end

hotel_finder = HotelFinder.new("hotels.csv")
hotel_finder.names
