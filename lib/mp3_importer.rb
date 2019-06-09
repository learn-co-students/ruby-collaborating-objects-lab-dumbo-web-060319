class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        File.basename(self.path, ".mp3")
        Dir.entries(self.path)
    end

    def import
        imported = File.basename(self.path, "*.mp3")
        Song.new_by_filename(imported)
    end

end