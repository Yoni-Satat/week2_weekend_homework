require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test
  def setup()
    @guest = Guest.new('Yoni', 10)
  end

  def test_guest_has_name
    actual = @guest.name()
    assert_equal('Yoni', actual)
  end

  def test_guest_has_money
    actual = @guest.money()
    assert_equal(10, actual)
  end

end
