require './lib/alpha_translator'
require './lib/braille_translator'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class AlphaTranslator < Minitest::Test

  def test_it_exists
    at = AlphaTranslator.new

    assert_instance_of AlphaTranslator, at
  end 

end
