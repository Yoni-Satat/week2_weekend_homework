class Room
  attr_reader(:name, :songs, :guests)

  def initialize(name)
    @name = name
    @guests = []
    @songs = []
  end

  def add_song(song)
    @songs.push(song)
  end

  def add_guest(guest)
    @guests.push(guest)
  end

  def remove_guest(guest)
    @guests.delete(@guests)
  end
end
