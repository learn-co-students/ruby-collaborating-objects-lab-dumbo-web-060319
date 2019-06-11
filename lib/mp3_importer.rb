class MP3Importer 
  attr_reader :path 
  
  def initialize(path)
    @path = path
  end
  
  def files 
    list_of_files = Dir.glob("./spec/fixtures/mp3s/*")
    list_of_files.map { |file_path| file_path = file_path.split("/")[4] }
  end
  
  def import
    self.files.each{|file| Song.new_by_filename(file)}
  end
  
  
  
end