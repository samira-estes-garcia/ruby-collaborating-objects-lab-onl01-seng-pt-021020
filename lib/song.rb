class Song 
  
  attr_accessor :name, :artist, :file_name
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @artist = artist
    @file_name = file_name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file_name)
    self.name = file_name.split(" - ")[0]
    song.artist.name = file_name.split(" - ")[1]
  end
  

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  
  
  
end