require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test
  def setup()
    @guest = Guest.new('Yoni', 10, "It's a sin")
  end

  def test_guest_has_name
    actual = @guest.name()
    assert_equal('Yoni', actual)
  end

  def test_guest_has_money
    actual = @guest.money()
    assert_equal(10, actual)
  end

  def test_remove_money_from_guest
    @guest.spend(10)
    actual = @guest.money()
    assert_equal(0, actual)
  end

  def test_guest_favourite_song
    actual = @guest.fav_song()
    assert_equal("It's a sin", actual)
  end

end
