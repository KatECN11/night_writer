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

    actual = bm.converter
    expected = [".0\n00\n00\n"]

    assert_equal expected, actual
  end

  def test_converts_multiple_characters
    bm = BrailleTranslator.new

    actual = bm.converter
    expected = [".0.0\n00.0\n0000\n"]

    assert_equal expected, actual
  end

  def test_converts_multiple_characters_on_same_line
    bm = BrailleTranslator.new

    actual = bm.converter
    expected = [".0.0..\n00.000\n000000\n"]

    assert_equal expected, actual
  end


  def test_it_outputs_array_of_80_braille_characters_per_element
    bm = BrailleTranslator.new
    message = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    actual = bm.converter
    expected =
    [".0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0\n" +
    "00000000000000000000000000000000000000000000000000000000000000000000000000000000\n" +
    "00000000000000000000000000000000000000000000000000000000000000000000000000000000\n",
    ".0\n00\n00\n"]


  assert_equal expected, actual
  end

end
