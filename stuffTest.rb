require "stuff.rb"
require "minitest/autorun"

class stuffTest < Minitest::Test
    
  def test_p
    assert_equal(Stuff.new.mode(23),"23")
  end

end