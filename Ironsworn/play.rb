require_relative 'dice'

class Play
    D10 = Dice.new(10)
    D6 = Dice.new(6)

    def self.action(carac, bonus = 0)
        challenge_dice_1 = D10.roll
        challenge_dice_2 = D10.roll
        dsix = D6.roll
        score_action = dsix + carac + bonus
        
        if(challenge_dice_1 < challenge_dice_2)
            @little = challenge_dice_1
            @greater = challenge_dice_2
        elsif(challenge_dice_1 > challenge_dice_2)
            @little = challenge_dice_2
            @greater = challenge_dice_1
        else
            @little = challenge_dice_1
            @greater = challenge_dice_2
        end

        hit(@little, score_action, @greater)
    end

    def self.hit(dice1, score_action, dice2)
        puts "chalOne: #{dice1} | score action: #{score_action} | chalTwo: #{dice2}"
        if(score_action > dice1 && score_action > dice2)
            puts "--- STRONG HIT ---"
        elsif(score_action < dice1 && score_action < dice2)
            puts "--- FAIL ---"
        else 
            puts "--- WEAK HIT ---"
        end
    end
end