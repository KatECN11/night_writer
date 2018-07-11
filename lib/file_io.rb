class FileIO
  def read
    handle = File.open(ARGV[0], 'r')
    File.read(handle)
  end

  def write
    writer = ARGV[1]
    File.open(writer)
end
