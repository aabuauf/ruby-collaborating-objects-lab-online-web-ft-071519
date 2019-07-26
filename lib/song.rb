require 'pry'

class Song
  
<<<<<<< HEAD

  attr_accessor :name, :artist
  def initialize(name)
    @name = name
 
  end
  

  
  def self.new_by_filename(title)
   artist = Artist.new(title.split(" - ")[0])
  
    song = Song.new(title.split(" - ")[1])
    song.artist = artist
  artist.add_song(song)
    binding.pry
return song
=======
  @@all = []
  attr_accessor :name, :artist, :all
  def initialize(name)
    @name = name
    @song = []
  end
  
  def self.all
    
    @@all
  end
  
  def new_by_filename(title)
   
    song = Song.new(title.split(" - ")[1])
    song.artist = title.split(" - ")[0]
    @@all << song
    @song << song
>>>>>>> d8ff5ca16400ed050ab0e37a83e8c5078dbbe760
  end
end