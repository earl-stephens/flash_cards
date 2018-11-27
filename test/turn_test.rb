require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/turn'
require_relative '../lib/card'

class TurnTest < Minitest::Test

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



end
