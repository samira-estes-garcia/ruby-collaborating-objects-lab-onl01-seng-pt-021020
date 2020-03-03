class MP3Importer
  
  attr_accessor :filenames, :path
  
  def initialize(path)
    @path = path
    @filenames = [ ]
  end
  
  def files
    Dir.entries(path).each do |filename|
      @filenames << "#{filename}"
    end
    @filenames.delete_if {|x| x == "." || x == "."}
  end
  
  def import
    @filenames.each do |filename|
      artist_name = filename.split(" - ")[2]
      Artist.find_or_create_by_name(artist_name)
      song = filename.split(" - ")[1]
      Artist.add_song(song)
    end
  end
  
end