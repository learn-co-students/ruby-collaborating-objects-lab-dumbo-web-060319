require 'pry'

class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name

        @songs = []
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        star = self.all.find {|artist| artist.name == name }
        if star
            star
        else
            star = Artist.new(name)

        end
        star
    end

    def print_songs
        my_songs = Song.all.select { |song| song.artist == self.name }
        my_songs.map {|song| song.name }
        puts my_songs
    end

end