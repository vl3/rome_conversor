require 'test_helper'

class RomeConversorTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RomeConversor::VERSION
  end

  def test_rome_conversor_public_interface
    assert_equal 12, RomeConversor.parse("xii")
    assert_equal 30, RomeConversor.parse("xxx")
    assert_equal 4539, RomeConversor.parse("mmmmdxxxviiii")

    assert_equal RomeConversor.parse("xii"), 12
    assert_equal RomeConversor.parse("xxx"), 30
    assert_equal RomeConversor.parse("mmmmdxxxviiii"), 4539
  end
end
