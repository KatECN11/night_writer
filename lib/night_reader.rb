require './lib/alpha_translator'
require './lib/braille_translator'

handle = File.open(ARGV[0], 'r')

message = handle.read.chomp

handle.close

bt = BrailleTranslator.new
at = AlphaTranslator.new(bt)
alpha_message = at.converter(message)
require "pry"; binding.pry

writer = File.open(ARGV[1], 'w') do |f|
  f.puts alpha_message
end

characters = alpha_message.length

puts "Created #{ARGV[1]} containing #{characters} characters."
