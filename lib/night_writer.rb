handle = File.open(ARGV[0], 'r')

message = handle.read.chomp

puts "Created #{ARGV[1]} containing #{message.length} characters."
handle.close

class BrailleTranslater

  def initialize
    @alpha_to_braille = {"a" => [".0", "00", "00"],
                        "b" => [".0", ".0", "00"],
                        "c" => ["..", "00", "00"],
                        "d" => ["..", "0.", "00"],
                        "e" => [".0", "0.", "00"],
                        "f" => ["..", ".0", "00"],
                        "g" => ["..", "..", "00"],
                        "h" => [".0", "..", "00"],
                        "i" => ["0.", ".0", "00"],
                        "j" => ["0.", "..", "00"],
                        "k" => [".0", "00", ".0"],
                        "l" => [".0", ".0", ".0"],
                        "m" => ["..", "00", ".0"],
                        "n" => ["..", "0.", ".0"],
                        "o" => [".0", "0.", ".0"],
                        "p" => ["..", ".0", ".0"],
                        "q" => ["..", "..", ".0"],
                        "r" => [".0", "..", ".0"],
                        "s" => ["0.", ".0", ".0"],
                        "t" => ["0.", "..", ".0"],
                        "u" => [".0", "00", ".."],
                        "v" => [".0", ".0", ".."],
                        "w" => ["0.", "..", "0."],
                        "x" => ["..", "00", ".."],
                        "y" => ["..", "0.", ".."],
                        "z" => [".0", "0.", ".."]
                        }
                      end

            def converter(text)
              "#{@alpha_to_braille[text][0]}#{@alpha_to_braille[text][1]}#{@alpha_to_braille[text][2]}"
            end
end

# Braille conversion algorithm

bm = BrailleTranslater.new
braille_message = bm.converter(message)
p braille_message

writer = File.open(ARGV[1], 'w')

writer.write(braille_message)

writer.close
