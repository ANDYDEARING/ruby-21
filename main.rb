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
    def shuffle()
        @cards = @cards.sort_by{ rand }
    end
    def to_s()
        deck_string = ""
        for card in @cards do
            deck_string += card.to_s + "\n"
        end
        return deck_string
    end
    def deal(number_to_deal)
        new_cards = []
        for i in 1..number_to_deal
            new_cards.push(@cards.pop())
        end
        return new_cards
    end
end

#make a game object
=begin
deck
dealer score
player score
playerMove()
dealerMove()
endGame()
=end
class Game
    def initialize
        @deck = Deck.new
        @deck.shuffle
        @dealerScore = 0
        @playerScore = 0
        @dealerHand = []
        @playerHand = []
    end
    def start
        print "What is your name? "
        @name = gets.chomp
        puts "Hi #{@name}"
        self.play
    end
    def play
        @dealerHand = @deck.deal(2)
        @playerHand = @deck.deal(2)
        self.display
    end
    def show_cards(hand)
        hand_str = ""
        for i in 0..(hand.length-1)
            hand_str += hand[i].to_s
            if i != hand.length-1
                hand_str += ", "
            end
        end
        return hand_str
    end
    def display
        system "clear"
        puts "DEALER CARDS: #{self.show_cards(@dealerHand)}"
        puts "#{@name} CARDS: #{self.show_cards(@playerHand)}"
    end
    def show_deck
        return @deck.to_s
    end
end

#start the game
#play again?
myGame = Game.new
myGame.start

