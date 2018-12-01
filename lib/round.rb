require './lib/turn'
require 'pry'

class Round

attr_reader :deck,
            :current_card_number,
            # :new_turn,
            :turns,
            :num_right

def initialize(deck_arg)
  @deck = deck_arg
  @turns = []
  @num_right = 0
  @current_card_number = 0
end

def current_card
  deck.get_a_card(@current_card_number)
end

def take_turn(my_guess)
  # current_card_number = 0
  card_variable = current_card
  @new_turn = Turn.new(my_guess, card_variable)
  @turns.push(@new_turn)
  @current_card_number += 1
#   current_card(current_card_number
return @new_turn

end

def number_correct
  if @new_turn.correct?
    @num_right += 1
  end
end

end
