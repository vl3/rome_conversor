require 'test_helper'

using RomeConversor

module RomeConversor
  class TestFixnum < MiniTest::Test
    def test_fixnum_to_rome
      assert_equal "xxii", 22.to_rome
      assert_equal "l", 50.to_rome
      assert_equal "mmcccxxi", 2321.to_rome
    end
  end
end
