class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def add_song(record)
        song = Song.new(record)
        song.artist = self.name

        song
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        if Artist.all.include? name
            star = Artist.all.find { |artist| artist.name == name }
        else
            star = Artist.new(name)
        end
        star
    end

    def print_songs

    end

end