require './lib/braille_translator'

bt = BrailleTranslator.new
bt.converter

# handle = File.open(ARGV[0], 'r')
#
# message = handle.read.chomp

# handle.close


# braille_message = bm.converter(message)

# writer = File.open(ARGV[1], 'w') do |f|
#   f.puts braille_message
# end

# characters = 0
# braille_message.each do |element|
#   characters += element.length
# end
#
#
# puts "Created #{ARGV[1]} containing #{characters} characters."
