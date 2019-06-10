# The MP3 Importer will parse all the filenames in the spec/fixtures folder and send the filenames to the Song class

# ../spec/fixtures/mp3s
# ../spec/fixtures/mp3s/file_name

# Action Bronson - Larry Csonka - indie.mp3

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries("./spec/fixtures/mp3s").select { |f| !File.directory? f }
  end

  def import
    self.files.each { |file| Song.new_by_filename(file) }
  end
end

music_importer = MP3Importer.new("./spec/fixtures/mp3s")
p music_importer.files
p music_importer.files.size

# file.split(" - ")[0]
