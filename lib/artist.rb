require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all=[]
  def initialize(name)
    @name=name

    @songs=[]
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name_passed)
    this_artist=self.all.select do |artist_instance|
      artist_instance.name == name_passed
    end

    if this_artist[0].nil?
      new_artist=  Artist.new(name_passed)
      new_artist

    else
      return this_artist[0]
    end
  end

  def add_song(song)
    self.songs  << song
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|song_instance| puts song_instance.name}
  end
end
