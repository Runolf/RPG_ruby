require_relative 'Heros'
require_relative 'Monster'
require_relative 'Hero_factory'
class Main


    her = HeroFactory.create_hero

    mons = Monster.new("Damn")
    
    her.attack(mons)

    her.attack(mons)

    her.attack(mons)

end