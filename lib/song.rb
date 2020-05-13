require 'pry'
class Song
  attr_accessor :genre, :name, :artist, :songs 
  #attr_reader :artist
  @@all = []
  @song 
  def initialize(name)
  @name = name
  @artist = artist 
  @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self
    self
  end 
  
  def artist= (artist)
    @songs = songs 
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end 
  
  def self.new_by_filename(filename)
    array = filename.chomp(".mp3").split(" - ")
    song = self.new(array[1])
    song.artist = array[0]
    
  end 
    
  
  
end