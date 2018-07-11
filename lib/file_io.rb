require './lib/braille_translator'
class FileIO
  def read
    handle = File.read(ARGV[0])
    
  end

  def write(output)
    writer = File.open(ARGV[1], 'w') do |f|
      f.puts output
    end
    characters = 0
    output.each do |element|
      characters += element.length
    end
    puts "Created #{ARGV[1]} containing #{characters} characters."
end
end
