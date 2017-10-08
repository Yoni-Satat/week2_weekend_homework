# require('pry')
# binding.pry()

class Guest

  attr_reader(:name, :money, :fav_song)

  def initialize(name, money, fav_song)
    @name = name
    @money = money
    @fav_song = fav_song
  end

  def spend(amount)
    @money -= amount
  end

  def cheer(fav_song)
    if (fav_song == "It's a sin")
      return "Whooo"
    end
  end
end
