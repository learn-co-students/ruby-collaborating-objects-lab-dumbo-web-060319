class MP3Importer

  attr_accessor :path

  def initialize (path)
    @path = path
  end 
  
  def files
    list_of_files = Dir.glob("./spec/fixtures/mp3s/*")
    list_of_files.map {|file_path| file_path = file_path.split("/")[4]}
    #binding.pry
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end