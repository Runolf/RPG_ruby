class FileManager

@filename = "planet.csv"

#   file.read dit the same
#   file_data = file.readlines.map(&:chomp)
#   puts file_data


    def self.create_file(planet)
       # file = File.open(filename)
       unless File.exist?(@filename)
        File.open(@filename, "a") {|f| f.write "name;type;tall\n"}
       end

        File.open(@filename, "a") {|f| f.write "#{planet.name};#{planet.type};#{planet.tall}\n" }
        #file.close
    end 


    def self.read_file
        File.foreach(@filename) {|line| puts line }
    end
end