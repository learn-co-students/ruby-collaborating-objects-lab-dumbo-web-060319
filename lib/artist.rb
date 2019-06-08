require 'pry'

class Artist

  @@all = []
  
  attr_accessor :name

  def initialize (name)
  	@name = name
  	@@all << self
  end

  def add_song (song)
    song.artist = self
  end

  def songs 
  	Song.all.select {|song| song.artist = self}
  end

  def save
    @@all << self
  end

  def self.all
  	@@all
  end

  def self.find_or_create_by_name (name)
  	artist = @@all.find {|artist| artist.name == name}
  	if artist != nil
  	  artist
  	else
  	  self.new(name)
  	end
  end

  def print_songs
  	Song.all.each {|song| 
  	  if song.artist_name == name
 	    puts song.name
 	  end
  	}
  end
end