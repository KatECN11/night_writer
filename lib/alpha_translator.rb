class AlphaTranslator

  def initialize(key)
    @key = key.alpha_to_braille.invert
  end

  def converter(message)
    @key[message.scan(/.{2}/)]

  end

  def prepare_braille(braille)
    sectioned_message = braille.scan(/.{6}/)
    converted_array = sectioned_message.map do |message|
      converter(message)
    end
    converted_array.join
  end

end
