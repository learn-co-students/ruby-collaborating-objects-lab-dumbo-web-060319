require "pry"
class Song

  def initialize(name)
    @name = name
  end

  attr_accessor :artist, :name, :song

  def artist_name=(name)
    self.artist=Artist.find_or_create_by_name(name)
    artist.add_song(self)
    artist.save

  end

  def self.new_by_filename(file_name)
    #parsed_string parse file name here
    arr=file_name.split(" - ")
    new_song=self.new(arr[1])
   new_song.artist_name=(arr[0])
   new_song

  end


end
