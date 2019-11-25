require './lib/card' #I tried to use relative for these next 4 requires
require './lib/turn' #But that broke everything so I switched them back
require './lib/deck'
require './lib/round'
require 'pry'



card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
card_4 = Card.new("How mant escalators exist in the state of Wyoming?", 2, :Geography)
cards = [card_1, card_2, card_3, card_4]
deck = Deck.new(cards)
round = Round.new(deck)

puts "Welcome! You're playing with #{cards.count} cards."
puts "-------------------------------------------------"
puts "This is card #{round.c_card} out of #{cards.count}"
puts "Press enter to begin"
gets

puts card_1.question
guess = gets.chomp
turn1 = Turn.new(guess, deck.cards.first)
turn1.feedback
# round.take_turn(guess)
# binding.pry
