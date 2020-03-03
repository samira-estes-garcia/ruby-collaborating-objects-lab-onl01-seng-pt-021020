class MP3Importer
  
  attr_accessor :filenames, :path
  
  def initialize(path)
    @path = path
    @filenames = [ ]
  
  def import
    @filenames
  end
  
end