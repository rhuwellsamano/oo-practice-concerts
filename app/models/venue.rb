class Venue
  attr_accessor :title
  attr_reader :city

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    concerts_array = []
    # lists array of all concerts ever performed at this Venue
    Concert.all.select do |concert|
      concerts_array << concert.venue == self
    end
    concerts_array
  end

  def bands
    bands_array = []
    # lists array of all bands that ever played at this Venue
    concerts.map do |concert|
      bands_array << concert.band
    end
    bands_array
  end

  def self.most_hometown_shows
    # returns the instance of Venue that has hosted the most hometown shows



  end

end
