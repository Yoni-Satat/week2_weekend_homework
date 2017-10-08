require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRoom < MiniTest::Test
  def setup()
    @room = Room.new("The red room", 5)
    @song = Song.new('Africa', 'Toto')
    @guest = Guest.new('Miguel', 10)
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

  def test_has_capacity
    assert_equal(5, @room.capacity)
  end

  def test_is_full__returns_false
    @room.add_guest(@guest)
    result = @room.is_full
    assert_equal(false, result)
  end

  def test_is_full__returns_false
    1..5.times do
      @room.add_guest(@guest)
    end
    result = @room.is_full
    assert_equal(true, result)
  end

  def test_doesnt_add_guest_when_room_is_full
    99.times do
      @room.add_guest(@guest)
    end
    # @room.add_guest(@guest)

    assert_equal(5, @room.guests.count)
  end
end
