require_relative 'planet'
require_relative './files/file-manage'

class Main
    planet = Planet.new("terra", "tellurique", "100")
    
    puts "Do you want to create or read the file?"
    answer = gets.chomp

    case answer
    when "create" 
        FileManager.create_file(planet)
        puts "created"
    when "read"
        FileManager.read_file
    else 
        puts "choose 'create' or 'read' !"
    end
    
end