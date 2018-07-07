require "./lib/braille_translator"
require "minitest/autorun"
require "minitest/pride"
require "pry"

class BrailleTranslatorTest < Minitest::Test

  def test_it_exists
    bm = BrailleTranslator.new
    assert_instance_of BrailleTranslator, bm
  end

  def test_converts_single_character
    bm = BrailleTranslator.new

    actual = bm.converter("a")
    expected = ".0\n00\n00"

    assert_equal expected, actual
  end
end
