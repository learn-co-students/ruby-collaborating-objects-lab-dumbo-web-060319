# The Artist class will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).

class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    found = @@all.find { |artist| artist.name == name }
    if found
      found
    else
      self.new(name)
    end
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
