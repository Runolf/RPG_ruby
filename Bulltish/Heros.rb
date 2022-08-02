class Heros
    attr_reader :name,:pv, :end

    def initialize(name, job = "Warrior", race = "Human")
      @name = name
      @pv = 100
      @end = 100
    end

    def attack(foe)
      power = rand(5..10)
      puts "#{@name} hits #{foe.name} with #{power} power"
      foe.pv-=power 
      @end-=power

      puts "pv monster: #{foe.pv}"
      puts "end hero: #{@end}"
    end
end