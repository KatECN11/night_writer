require './lib/alpha_translator'
require './lib/braille_translator'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class AlphaTranslatorTest < Minitest::Test

  def test_it_exists
    bt = BrailleTranslator.new
    at = AlphaTranslator.new(bt)

    assert_instance_of AlphaTranslator, at
  end

  def test_it_converts_one_braille_character_to_alpha
    bt = BrailleTranslator.new
    at = AlphaTranslator.new(bt)

    actual = at.converter(".00000")
    expected = "a"

    assert_equal expected, actual
  end
end
