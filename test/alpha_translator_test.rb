require './lib/alpha_translator'
require './lib/braille_translator'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class AlphaTranslatorTest < Minitest::Test

  def test_it_exists
    at = AlphaTranslator.new

    assert_instance_of AlphaTranslator, at
  end

  def test_it_converts_one_braille_character_to_alpha
    at = AlphaTranslator.new

    actual = at.converter(".00000")
    expected = "a"

    assert_equal expected, actual
  end

  def test_it_converts_multiple_braille_characters_to_alpha
    at = AlphaTranslator.new

    actual = at.prepare_braille(".00000.00000")
    expected = "aa"

    assert_equal expected, actual
  end

  def test_makes_3_arrays_of_braille
    at = AlphaTranslator.new

    actual = at.organize_arrays([".0.0\n", "00.0\n", "0000\n"])
    expected =[[".0.0"], ["00.0"], ["0000"]]

    assert_equal expected, actual
  end



end
