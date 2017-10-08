class Room
  attr_reader(:name, :songs, :guests, :capacity)

  def initialize(name, capacity)
    @name = name
    @guests = []
    @songs = []
    @capacity = capacity
  end

  def add_song(song)
    @songs.push(song)
  end

  def add_guest(guest)
    if (is_full() == false)
      @guests.push(guest)
    end
  end

  def remove_guest(guest)
    @guests.delete(@guests)
  end

  def is_full()
    if (@guests.length >= capacity)
      return true
    else
      return false
    end
  end
end
