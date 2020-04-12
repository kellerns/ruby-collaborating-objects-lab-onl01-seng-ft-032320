<<<<<<< HEAD
require "pry"

=======
>>>>>>> 218885d92e815d2e848e6d9a1536118f5997990f
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end
  
  def files
<<<<<<< HEAD
    @file = Dir.glob("#{@path}/*.mp3")
    @file.map do |file_str|
      file_str.gsub("#{@path}/", "")
    end
  end
  
  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
=======
    @file = Dir.entries(@path)
    @file
  end
  
  def import
    @file.each do |file|
    Song.new_by_filename(file)
    end
  end





>>>>>>> 218885d92e815d2e848e6d9a1536118f5997990f
end