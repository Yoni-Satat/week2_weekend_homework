# require('pry')
# binding.pry()

class Guest

  attr_reader(:name, :money)

  def initialize(name, money)
    @name = name
    @money = money
  end

  def spend(amount)
    @money -= amount
  end
end
