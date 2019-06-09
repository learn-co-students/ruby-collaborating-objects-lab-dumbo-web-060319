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
        song.artist = title[0]

        song
    end

end