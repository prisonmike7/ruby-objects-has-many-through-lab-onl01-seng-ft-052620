class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name)
    song_new = Song.new(name)
    song_new.artist = self
  end

  def songs

  end

  def genres

  end

end
