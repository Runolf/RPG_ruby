class Planet 
    
    # -- Datas -- 
    # name
    # type {mini, tellurique, gaz}
    # tall circumference ( km )

    attr_accessor :name, :type, :tall

    def initialize(name, type, tall)
        @name = name
        @type = type
        @tall = tall
    end
  

end