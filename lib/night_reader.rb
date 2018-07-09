require './lib/alpha_translator.rb'

handle = File.open(ARGV[0], 'r')

message = handle.read.chomp

handle.close

am = AlphaTranslator.new
alpha_message = am.break_to_40(message)

writer = File.open(ARGV[1], 'w') do |f|
  f.puts alpha_message
end

characters = 0
alpha_message.each do |element|
  characters += element.length
end

puts "Created #{ARGV[1]} containing #{characters} characters."
