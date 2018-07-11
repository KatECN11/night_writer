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

  def test_makes_3_arrays_of_braille
    at = AlphaTranslator.new

    actual = at.organize_arrays([".0.0\n", "00.0\n", "0000\n"])
    expected =[".0.0", "00.0", "0000"]

    assert_equal expected, actual
  end

  def test_group_into_two_characters
    at = AlphaTranslator.new

    actual = at.groups_of_two([".0.0", "00.0", "0000"])
    expected = [[".0", ".0"], ["00", ".0"], ["00", "00"]]

    assert_equal expected, actual
  end

  def test_rearrange_by_character
    at = AlphaTranslator.new

    actual = at.rearrange([[".0", ".0"], ["00", ".0"], ["00", "00"]])
    expected = [[".0", "00", "00"], [".0", ".0", "00"]]

    assert_equal expected, actual
  end

  def test_does_it_convert_to_alpha
    at = AlphaTranslator.new

    actual = at.convert_to_alpha([[".0", "00", "00"], [".0", ".0", "00"]])
    expected = "ab"

    assert_equal expected, actual
  end

  def test_braille_to_alpha_converter_ceo

    at = AlphaTranslator.new

    actual = at.braille_to_alpha_converter(
    [".0.0.0.0.0...0.00....0.0.0.....0.0...0.00...0....0......0....0...0.0.0.0..0..00.\n",
    "..0..0.00.....0.....00..0...0.0.00..0000.....0..0000...0.00.0...0..00...0......0\n",
    "0000.0.0.0..00.00...00.000.....0.....000.0..00..00.0..0000.000..00..00.0...00000\n",
    "......0.0...0.0..0.0.0...0.0.0.0..0.....0....0.0.0....\n",
    "0......0.0...0..0..0.0....0...0....00....0000..0000.0.\n",
    ".000..00.0...00.00.0.0..0000.000..00.0..000000.000.000\n"])
    expected = "hello how are you kat i am fine everything is swell here in iceland"

    assert_equal expected, actual
  end
end
