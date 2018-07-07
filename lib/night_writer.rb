require './lib/braille_translator'

handle = File.open(ARGV[0], 'r')

message = handle.read.chomp

handle.close



bm = BrailleTranslator.new
braille_message = bm.converter(message)
p braille_message

writer = File.open(ARGV[1], 'w')

writer.write(braille_message)

writer.close
puts "Created #{ARGV[1]} containing #{braille_message.length} characters."
