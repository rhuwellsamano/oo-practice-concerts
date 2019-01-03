class Concert
  attr_accessor :date, :band, :venue

  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue
    @@all << self
  end

  def self.all
    @@all
  end

##### attr_accessor #####
  # def band
  #   #returns band associated with concert
  # end
  #
  # def venue
  #   #returns venue associated with concert
  # end
#########################

  def hometown_show?
    # returns true if the concert is in the band's hometown
    self.venue.city == self.band.hometown
  end

end
