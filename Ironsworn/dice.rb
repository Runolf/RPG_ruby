class Dice
    def initialize(ndbr_face)
      @ndbr_face = ndbr_face
    end

    def roll
        rand(@ndbr_face)+1
    end
end