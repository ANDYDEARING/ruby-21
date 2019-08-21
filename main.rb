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
class Deck
    def initialize()
        @number_of_cards = 52
        @suits = ["SPADES", "DIAMONDS", "HEARTS", "CLUBS"]
        @values = ["ACE", "2", "3", "4", "5", "6", "7", "8", "9", "10", "JACK", "QUEEN", "KING"]
        @cards = []
        for suit in @suits do
            for value in @values do
                @cards.push(Card.new(value,suit))
            end
        end
    end
    def to_s()
        deck_string = ""
        for card in @cards do
            deck_string += card.to_s + "\n"
        end
        return deck_string
    end
end

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
myDeck = Deck.new
puts myDeck.to_s

