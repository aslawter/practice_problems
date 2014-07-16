require "csv"

class DbGenerator
  def initialize(filename)
    @filename = filename
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
end
