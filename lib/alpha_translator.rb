class AlphaTranslator

  def initialize(key)
    @key = key.alpha_to_braille.invert
  end

  def converter(message)
    @key[message.scan(/.{2}/)]

  end

  # def prepare_braille(braille)


end
