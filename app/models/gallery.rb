
class Gallery

    attr_accessor :name, :city 
    @@all = []
  
    def initialize(name, city)
      @name = name 
      @city = city 
      @@all << self 
    end 
  
    def self.all 
      @@all 
    end 
  
    def paintings #joiner method
      #returns array of all paintings in a gallery 
      Painting.all.select { |painting| painting.gallery == self }
    end 

    def painting_names 
      paintings.map { |painting| painting.title }
    end 
  
    def artists #opposite method 
      #returns an array of all artists that have a painting in a gallery 
  
      paintings.map { |painting| painting.artist }
    end 
  
    def artist_names 
      #returns array of the names of all artists tha thave a painting in a gallery 
      artists.map { |artist| artist.name }
    end 
  
    def most_expensive_painting
      #returns an instance of the most expensive painting in a gallery
      
      paintings.max_by {|painting| painting.price }

    end 
end 
  

