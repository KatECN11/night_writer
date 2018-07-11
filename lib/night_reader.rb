require './lib/alpha_translator'
require './lib/braille_translator'
require 'pry'

handle = File.open(ARGV[0], 'r')

# message = handle.read.chomp

lines = handle.readlines

handle.close


at = AlphaTranslator.new
alpha_message = at.braille_to_alpha_converter(lines)



# at = AlphaTranslator.new
# alpha_message = at.prepare_braille(lines)
#
writer = File.open(ARGV[1], 'w')


writer.write(alpha_message)

characters = alpha_message.length

puts "Created #{ARGV[1]} containing #{characters} characters."
