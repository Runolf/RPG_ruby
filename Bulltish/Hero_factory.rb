require_relative 'Heros'

class HeroFactory 
    def self.create_hero
        
        puts "Enter your hero's name: "
        name = gets.chomp

        puts "Enter your hero's job: "
        job = gets.chomp
        
        puts "Enter your hero's race: "
        race = gets.chomp

        hero = Heros.new(name, job, race)

        puts "#{hero[:name]} is a #{hero[:race]}'s #{hero[:job]}"
        return hero
    end
end 