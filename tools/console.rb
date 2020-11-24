require_relative '../config/environment.rb'
require 'pry'


 
#galleries
lourve = Gallery.new("The Louvre", "Paris")
met = Gallery.new("The Met", "NYC")
national = Gallery.new("National Gallery", "London")
ufizi = Gallery.new("Uffizi Gallery", "Florence")

# artists
davinci = Artist.new("Da Vinci", 5)
gogh = Artist.new("Van Gogh", 4)
dali = Artist.new("Dali", 3)
picasso = Artist.new("Picasso", 2)

#painting 
p1 = Painting.new(davinci, lourve, "Mona Lisa", 100)
p2 = Painting.new(gogh, met, "Starry Night", 75)
p3 = Painting.new(dali, national, "Persistence Memory", 80)
p4 = Painting.new(picasso, ufizi, "Guernica", 50)
p5 = Painting.new(davinci, met, "Last Supper", 100)
p6 = Painting.new(picasso, lourve, "Self-Portrait", 300)

binding.pry


