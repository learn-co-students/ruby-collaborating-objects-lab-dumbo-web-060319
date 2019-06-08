class Song

  @@all = []

  attr_accessor :name, :artist
  
  def initialize (name)
  	@name = name
  	@@all << self 
  end

  def self.new_by_filename (file_name)
    seperated_file = file_name.split(" - ")
    new_song = self.new(seperated_file[1])
    song_artist = Artist.all.find {|artist| artist.name == seperated_file[0]}
    if song_artist.nil?
      song_artist = Artist.new(seperated_file[0])
    end
    song_artist.add_song(new_song)
    #binding.pry
    return new_song
  end

  def artist_name
  	return self.artist.name
  end

  def self.all
  	@@all
  end
end