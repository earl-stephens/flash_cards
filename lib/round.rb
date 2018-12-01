require './lib/turn'
require 'pry'

class Round

attr_reader :deck,
            :current_card_number,
            :turns,
            :num_right,
            :category_hash

def initialize(deck_arg)
  @deck = deck_arg
  @turns = []
  @num_right = 0
  @current_card_number = 0
  # @category_hash ={}
end

def current_card
  deck.get_a_card(@current_card_number)
end

def take_turn(my_guess)
  card_variable = current_card
  @new_turn = Turn.new(my_guess, card_variable)
  @turns.push(@new_turn)
  number_correct
  @current_card_number += 1
return @new_turn
end

def number_correct
  if @new_turn.correct?
    @num_right += 1
  end
  #added explicit return to make it clear
  #to me that this is what is being returned
  return @num_right
end

def number_correct_by_category(category_arg)
  counter = 0
  # binding.pry
  @turns.each do |turn|
    if turn.correct? && turn.card.category == category_arg
        counter +=1
    end
  end
return counter
end

def percent_correct
  right_number = @num_right.to_f
  total_number = @turns.length.to_f
  (right_number / total_number) * 100
end

end
