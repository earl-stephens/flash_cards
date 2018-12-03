require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require 'pry'
# filename = "cards.txt"

class CardGeneratorTest < Minitest::Test

  def test_it_exists
    cards = CardGenerator.new("cards.txt").cards
    # binding.pry
    assert_instance_of Card, cards
  end


end
