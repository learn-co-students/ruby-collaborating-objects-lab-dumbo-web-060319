# require 'pry'

class Song

    attr_accessor :name, :artist

    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
        artist.save
    end 

    def self.new_by_filename(file)
        title = file.split(" - ")
        song = self.new(title[1])
        song.artist_name = title[0]

        song
    end

end