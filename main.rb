#make a card object
=begin
suit
value
=end
class Card
    def initialize (value,suit)
        @value = value
        @suit = suit
    end
    def to_s()
        return "#{@value} of #{@suit}"
    end
end

#make a deck of cards object
=begin
cards
shuffle()
deal(int)
=end

#make a game object
=begin
deck
dealer hand
player hand
playerMove()
dealerMove()
endGame()
=end

#start the game
#play again?
card1 = Card.new("ACE", "SPADES")
puts card1.to_s()

