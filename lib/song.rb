# The Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class

# file_name = 'Michael Jackson - Black or White - pop.mp3'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist_name = file.split(" - ")[0]

    new_song = self.new(song_name)
    new_song.artist = Artist.new(artist_name)
    new_song.artist.save
    new_song.artist.add_song(new_song)
    new_song
  end
end
