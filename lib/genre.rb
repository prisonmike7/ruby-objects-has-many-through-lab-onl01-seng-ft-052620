class Genre

  attr_accessor :genre

  @@all = []

  def initialize(genre)
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
