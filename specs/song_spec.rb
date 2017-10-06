require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test
  def setup()
    @song = Song.new('Africa', 'Toto')
  end

  def test_song_has_title
    actual = @song.title()
    assert_equal('Africa', actual)
  end

  def test_song_has_artist
    actual = @song.artist
    assert_equal('Toto', actual)
  end
end
