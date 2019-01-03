require 'bundler/setup'
Bundler.require
require_all 'app'

venue1 = Venue.new("TITLE1", "CITY1")
venue2 = Venue.new("TITLE2", "CITY2")
venue3 = Venue.new("TITLE3", "CITY3")
venue4 = Venue.new("TITLE4", "CITY4")
venue5 = Venue.new("TITLE5", "CITY5")

band1 = Band.new("NAME1","CITY1")
band2 = Band.new("NAME2","CITY2")
band3 = Band.new("NAME3","CITY3")
band4 = Band.new("NAME4","CITY4")
band5 = Band.new("NAME5","CITY5")

concert1 = Concert.new("DATE1", band1, venue1)
concert2 = Concert.new("DATE2", band2, venue2)
concert3 = Concert.new("DATE3", band3, venue3)
concert4 = Concert.new("DATE4", band4, venue4)
concert5 = Concert.new("DATE5", band5, venue5)

venue1
venue2
venue3
venue4
venue5

band1
band2
band3
band4
band5

concert1
concert2
concert3
concert4
concert5
