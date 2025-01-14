require 'pry'

class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  def initialize(name)
    @name = name 
    @songs = []
    
  end
  
  def add_song(song)
    @songs << song
    @@all << self
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
   returnValue = []
    @@all.each do |artistName|
      if artistName.name == name
       returnValue = artistName 
      end
    end
    
    if returnValue == [] 
      Artist.new(name)
    end
  end
  
  def print_songs
    @songs.each do |songElement|
      puts songElement.name
    end
  end
  
end