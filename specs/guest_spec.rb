require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test
  def setup()
    @guest = Guest.new('Yoni')
    @guest1 = Guest.new('Andre')
  end

  def test_guest_has_name
    actual = @guest.name()
    assert_equal('Yoni', actual)
  end

end
