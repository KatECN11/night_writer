class AlphaTranslator

  def initialize
    @braille_to_alpha = {[".0", "00", "00"]=>"a",
                         [".0", ".0", "00"]=>"b",
                         ["..", "00", "00"]=>"c",
                         ["..", "0.", "00"]=>"d",
                         [".0", "0.", "00"]=>"e",
                         ["..", ".0", "00"]=>"f",
                         ["..", "..", "00"]=>"g",
                         [".0", "..", "00"]=>"h",
                         ["0.", ".0", "00"]=>"i",
                         ["0.", "..", "00"]=>"j",
                         [".0", "00", ".0"]=>"k",
                         [".0", ".0", ".0"]=>"l",
                         ["..", "00", ".0"]=>"m",
                         ["..", "0.", ".0"]=>"n",
                         [".0", "0.", ".0"]=>"o",
                         ["..", ".0", ".0"]=>"p",
                         ["..", "..", ".0"]=>"q",
                         [".0", "..", ".0"]=>"r",
                         ["0.", ".0", ".0"]=>"s",
                         ["0.", "..", ".0"]=>"t",
                         [".0", "00", ".."]=>"u",
                         [".0", ".0", ".."]=>"v",
                         ["0.", "..", "0."]=>"w",
                         ["..", "00", ".."]=>"x",
                         ["..", "0.", ".."]=>"y",
                         [".0", "0.", ".."]=>"z",
                         ["..", "..", ".."]=>" "
                       }
  end

  # def converter(message)
  #   @key[message.scan(/.{2}/)]
  # end
  # this is our CEO method

  def organize_arrays(braille_message)
    first_braille_character = []
    second_braille_character = []
    third_braille_character = []
    braille_message.each_with_index do |braille, index|
    if index % 3 == 0
        first_braille_character << braille.chomp
      elsif (index - 1) % 3 == 0
        second_braille_character << braille.chomp
      else
        third_braille_character << braille.chomp
      end
    end
    braille_characters = [first_braille_character, second_braille_character, third_braille_character]
  end

  def groups_of_two(braille_characters)
    double_elements = braille_characters.flatten.map do |braille_character|
      braille_character.scan(/.{2}/)
    end
    double_elements
  end

end
