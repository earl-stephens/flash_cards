require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'

class TurnTest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    assert_instance_of Card, card
  end

  def test_it_has_a_guess
    #skip
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_equal "Juneau", turn.guess
  end

  def test_it_was_guessed_correctly
    #skip
    card = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert turn.correct?
  end

def test_it_was_guessed_incorrectly
  card = Card.new("What is the capital of Alaska", "Juneau", :Geography)
  turn = Turn.new("Fairbanks", card)

  refute turn.correct?
end

end
