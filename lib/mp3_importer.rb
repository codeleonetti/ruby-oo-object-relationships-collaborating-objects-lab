
require "pry"
class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path=path

    end

    def files
       # Dir.glob('#{@path}/*.mp3').select { |song| File.file? e }
        Dir.chdir(@path) do |path|
             Dir.glob("*.mp3")
            
        end
    end

    def import
      #  binding.pry
      files.each do |file|
     Song.new_by_filename(file)
      end
    end



end