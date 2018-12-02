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

#initial output to user
puts "Welcome!  You're playing with " + deck.count.to_s + " cards."
puts "------------------------------------------------------------"
# binding.pry
counter_variable = round.current_card_number + 1
while round.turns.count < deck.cards.length
puts "This is card " + counter_variable.to_s + " out of " + deck.count.to_s
puts "Question: " + round.current_card.question

#get input from user
answer = gets.chomp

#print output
puts round.take_turn(answer).feedback

counter_variable += 1

end

puts "****** Game over! ******"
puts "You had " + round.num_right.to_s + " correct guesses out of " +
      round.turns.count.to_s + " for a total score of " +
      round.percent_correct.to_i.to_s + "%."
