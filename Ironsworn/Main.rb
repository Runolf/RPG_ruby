require 'json'
require_relative 'play'

class Main
 path_oracle = "../../datasworn/"
 # character_json = File.read("#{path_oracle}ironsworn_oracles_character.json")
 # character_oracle = JSON.parse(character_json)

 puts "What do you want to do?\n"
 puts "1:challenge your action dice | 2: ? \n"
 choice = gets.chomp

 case choice.to_i
 when 1
  while(true)
    puts "Write your value ( Wits, Shadow ..) then press enter\n"
    value = gets.chomp
    break if value.downcase.eql? "exit"
    if value.to_i == 0 || value.to_i > 3
      puts 'invalid value'
    else
      Play.action(value.to_i)
    end
  end
 when 2
  puts "2"
 end 
end