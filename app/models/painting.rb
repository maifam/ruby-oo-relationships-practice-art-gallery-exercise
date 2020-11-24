class Painting

  attr_reader :artist, :gallery, :title, :price

  @@all = []

  def initialize(artist, gallery, title, price)
    @artist = artist 
    @gallery = gallery
    @title = title
    @price = price
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def self.total_price 
    #returns an integer that is total price of ALL paintings 
    total_pr = 0 
    self.all.select { |painting| total_pr += painting.price }
    total_pr
  end 

end
