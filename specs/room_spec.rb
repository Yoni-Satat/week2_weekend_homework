require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRoom < MiniTest::Test
  def setup()
    @room = Room.new("The red room")
    @song = Song.new('Africa', 'Toto')
    @guest = Guest.new('Miguel')
  end

  def test_room_has_name
    actual = @room.name
    assert_equal('The red room', actual)
  end

  def test_room_starts_with_no_songs
    assert_equal(0, @room.songs.length)
  end

  def test_room_starts_with_no_guests
    assert_equal(0, @room.guests.length)
  end

  def test_can_add_song
    @room.add_song(@song)
    actual = @room.songs.length
    assert_equal(1, actual)
  end

  def test_can_add_guest
    @room.add_guest(@guest)
    assert_equal(1, @room.guests.length)
  end

  def test_can_remove_guest
    @room.remove_guest(@guest)
    assert_equal(0, @room.guests.length)
  end
end
