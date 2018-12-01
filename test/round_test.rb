require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test

def test_it_exists
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  cards = [card_1, card_2, card_3]
  deck = Deck.new(cards)
  round = Round.new(deck)
  # binding.pry
  assert_instance_of Round, round
end

def test_check_for_deck
  # skip
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  deck = Deck.new([card_1, card_2, card_3])
  round = Round.new(deck)
  assert_instance_of Deck, round.deck
end

def test_for_turns_array
  # skip
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  deck = Deck.new([card_1, card_2, card_3])
  round = Round.new(deck)
  round.turns
  assert_equal [], round.turns
end

def test_for_current_card
  # skip
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  deck = Deck.new([card_1, card_2, card_3])
  round = Round.new(deck)
  # binding.pry
  assert_equal card_1, round.current_card
end

def test_for_take_turn_method_returns_a_turn_object
  # skip
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  deck = Deck.new([card_1, card_2, card_3])
  round = Round.new(deck)
  #took the method below out
  # round.current_card
  round.take_turn("Juneau")
  assert_instance_of Turn, round.take_turn("Juneau")
  # assert_equal "Juneau", round.new_turn.guess
end

# NOTE: test below is pretty much the exact same as
# test_for_take_turn_method assert_instance_of
# def test_for_new_turn_class
#   card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
#   card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
#   card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
#   deck = Deck.new([card_1, card_2, card_3])
#   round = Round.new(deck)
#   round.take_turn("Juneau")
#   assert_equal Turn, round.new_turn.class
# end

def test_for_correct_guess
  # skip
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  deck = Deck.new([card_1, card_2, card_3])
  round = Round.new(deck)
  round.take_turn("Juneau")
  assert round.take_turn("Juneau").correct?
end

def test_for_turns_being_updated
  # skip
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  deck = Deck.new([card_1, card_2, card_3])
  round = Round.new(deck)
  round.take_turn("Juneau")
  # binding.pry
  assert_equal round.turns, round.take_turn("Juneau")
end

def test_for_number_of_correct_guesses
  skip
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  deck = Deck.new([card_1, card_2, card_3])
  round = Round.new(deck)
  round.take_turn("Juneau")
  assert_equal 1, round.number_correct
end

def test_for_next_current_card
  skip
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  deck = Deck.new([card_1, card_2, card_3])
  round = Round.new(deck)
  round.take_turn("Juneau")
  assert_equal
end
# The take_turn method is the crux of this problem.
# The take_turn method takes a string representing the guess.
# It should create a new Turn object with the appropriate guess
# and Card. It should store this new Turn, as well as return
# it from the take_turn method. Also, when the take_turn method
# is called, the Round should move on to the next card in the deck.
end
