class Artist
   @@all = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
    self.save

  end
  def self.add_song(song)
    @songs << song
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_or_create_by_name(nam, song = nil)

    if  (@@all.detect {|aux| aux.name == nam} != nil)

       @@all.detect {|aux| aux.name == nam}

    else
        Artist.new(nam)
        Artist.add_song(song)


    end


  end
  def print_songs
    self.songs.each { |obj|
      puts obj.name
    }
  end

end
