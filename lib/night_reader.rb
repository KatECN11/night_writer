require './lib/alpha_translator'
require './lib/braille_translator'

handle = File.open(ARGV[0], 'r')

# message = handle.read.chomp

lines = handle.readlines

handle.close


# at = AlphaTranslator.new
# alpha_message = at.prepare_braille(lines)
#
writer = File.open(ARGV[1], 'w')
alpha_message = "lkjsdflkjsafdlkjsdflkjdf"

writer.write(alpha_message)

characters = alpha_message.length

puts "Created #{ARGV[1]} containing #{characters} characters."
