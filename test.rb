require_relative "main"

def test_soft_17
    test_game = Game.new
    dealer_hand = [Card.new("ACE", "SPADES"),Card.new("6", "HEARTS"),Card.new("QUEEN", "HEARTS"),Card.new("ACE","HEARTS")]
    puts test_game.contains_ace(dealer_hand)
    @dealerScore = test_game.get_score(dealer_hand)
    @dealerHand = dealer_hand
    puts test_game.get_score(dealer_hand)
    puts @dealerScore < 17 || (@dealerScore == 17 && test_game.contains_ace(@dealerHand))
end

test_soft_17()