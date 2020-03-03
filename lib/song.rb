class Song 
  
  attr_accessor :name, :artist
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
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
    self.artist.name = file_name.split(" - ")[1]
  end
  
end
