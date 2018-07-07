require "./lib/braille_translator"
require "minitest/autorun"
require "minitest/pride"
require "pry"

class BrailleTranslatorTest < Minitest::Test

  def test_it_exists
    skip
    bm = BrailleTranslator.new
    assert_instance_of BrailleTranslator, bm
  end

  def test_converts_single_character
    skip
    bm = BrailleTranslator.new

    actual = bm.converter("a")
    expected = ".0\n00\n00"

    assert_equal expected, actual
  end

  def test_converts_multiple_characters
    skip
    bm = BrailleTranslator.new

    actual = bm.converter("ab")
    expected = ".0\n00\n00\n.0\n.0\n00"

    assert_equal expected, actual
  end

  def test_converts_multiple_characters_on_same_line
    skip
    bm = BrailleTranslator.new

    actual = bm.converter("abc")
    expected = ".0.0..\n00.000\n000000"

    assert_equal expected, actual
  end

  def test_breaks_long_string_into_groups_40
    bm = BrailleTranslator.new
    message = "aaaaaaaaaabbbbbbbbbaaaaaaaaaabbbbbbbbbbbccccccccccddddddddddccccccccccddddddddddee"

    actual = bm.break_to_40(message)
    expected = ["aaaaaaaaaabbbbbbbbbaaaaaaaaaabbbbbbbbbbb", "ccccccccccddddddddddccccccccccdddddddddd", "ee"]

    assert_equal expected, actual
  end

  

end
