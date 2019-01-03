class Band
  attr_accessor :name
  attr_reader :hometown

  @@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_introductions
    Band.all.each do |band|
      puts "Hello, we are #{name} and we're from #{hometown}"
    end
    # array of welcome messages for each Band: "Hello, we are {insert band name here} and we're from {insert hometown here}"
  end

  def play_in_venue(date, venue)
    #play_in_venue that takes a venue and date as a string as arguments and books that venue for the band.
    Concert.new(date, self, venue)
  end

  def concerts
    array_of_all_bands_concerts = []
    #array of all bands concerts
    Concert.all.select do |concert|
      array_of_all_bands_concerts << concert.band == self
    end
    array_of_all_bands_concerts
  end

  def venues
    array_of_venues = []
    # should return an array of all the venues the band has concerts in
    array_of_all_bands_concerts.map do |concert|
      array_of_venues << concert.venue
    end
    array_of_venues
  end

end
