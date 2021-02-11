require 'pry'
class Song
  attr_accessor :name, :artist, :genres
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genres)
    @name = name
    @artist = artist
    @genres = genres
    @@count = @@count + 1
    @@artists << artist
    @@genres << genres
    
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def genre
    @genres
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    g_count = {}
      @@genres.each do |g| 
        if g_count[g]   
            g_count[g] += 1
        else g_count[g] = 1
        end
           
     end
     g_count
  end

  def self.artist_count
    a_count = {}
   @@artists.each { |a| a_count[a] ? a_count[a] +=1 : a_count[a]=1}
   a_count   
  end
    
end

