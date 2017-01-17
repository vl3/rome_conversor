require 'test_helper'

module RomeConversor
  class TestRomeNumeral < MiniTest::Test
    def test_that_invalid_numeral_raises_an_error
      assert_raises RomeConversor::InvalidRomeNumeral do
        RomeNumeral.new("a")
      end

      assert_raises RomeConversor::InvalidRomeNumeral do
        RomeNumeral.new("nxii")
      end
    end

    def test_rome_numeral_parsing
      assert_equal 22, RomeNumeral.new("xxii").to_decimal
      assert_equal 50, RomeNumeral.new("l").to_decimal
      assert_equal 2321, RomeNumeral.new("mmcccxxi").to_decimal
    end
  end
end
