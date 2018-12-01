require './lib/turn'
require './lib/card'
require './lib/deck'
require './lib/round'
require 'pry'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
deck = Deck.new([card_1, card_2, card_3])
round = Round.new(deck)

puts "Welcome!  You're playing with 4 cards."
puts "__________________________________________________"
puts "This is card " + round.current_card_number.to_s + " out of " + deck.count.to_s
puts "Question: " + round.current_card.question
