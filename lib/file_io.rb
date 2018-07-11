require './lib/braille_translator'
class FileIO
  def read
    handle = File.read(ARGV[0])
  end

  def readlines
    handle = File.open(ARGV[0], 'r')
    lines = handle.readlines
  end
#make new method for readlines
  def write(output)
    writer = File.open(ARGV[1], 'w') do |f|
      f.puts output
    end
    characters = 0
    if output.class == Array
      output.each do |element|
      characters += element.length
      end
    else
      characters = output.length - 1
    end
    puts "Created #{ARGV[1]} containing #{characters} characters."
end
end
