class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Song.all.select {|song| song.artist == self}
  end

  def patients
    genre_array = []
    Song.all.each do|song|
      if song.artist == self
        genre_array << song.genre
      end
    end
    genre_array
  end

end
