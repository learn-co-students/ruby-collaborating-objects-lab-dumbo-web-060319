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

    def self.new_by_filename(file)
        title = file.split(" - ")
        song = Song.new(title[1])
        # binding.pry
        @artist = title[0]

        # Artist.find_or_create_by_name(song.artist)

        song
    end

end