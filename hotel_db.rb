require "csv"

class HotelFinder
  def initialize(filename)
    @filename = filename
  end

  def names 
    CSV.foreach(@filename, headers: true) do |row|
      name = row["Hotel"]
      puts name
    end
  end 
end

hotel_finder = HotelFinder.new("hotels.csv")
hotel_finder.names
