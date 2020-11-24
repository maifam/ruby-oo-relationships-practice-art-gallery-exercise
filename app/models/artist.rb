class Artist

  attr_reader :name, :years_experience
  @@all = [] 

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def self.all 
    @@all 
  end 
  
  def paintings #joiner method
    Painting.all.select { |painting| painting.artist == self }
  end 

  def galleries #opposite method 
    #returns an array of all galleries an artist has paintings in 
    paintings.map { |painting| painting.gallery }
  end 

  def cities 
    #returns an array of all cities an artist has paintings in 
    galleries.map { |gallery| gallery.city }.map 
  end 

  def self.total_experience 
    #returns an integer that is the total years of exp of all artists
    total_exp = 0 
    self.all.select {|artist| total += artist.years_experience}
    total_exp
  end 

  def self.most_prolific 
    #returns instance of the artist with highest 
    #amt of paintings pers year of experience 
    self.all.max_by { |artist| artist.paintings.count / artist.years_experience }
  end 

  def create_painting(gallery, title, price)
    #creates a new painting belonging to that artist 
    Painting.new(self, gallery, title, price)
  end 

end 

