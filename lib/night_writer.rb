handle = File.open(ARGV[0], 'r')

message = handle.read

puts "Created #{ARGV[1]} containing 256 characters."

handle.close

# Braille conversion algorithm
# braille_message = this is the braille

writer = File.open(ARGV[1], 'w')

writer.write("braille_message")

writer.close
