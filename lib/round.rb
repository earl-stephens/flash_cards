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
  @category_hash ={}
end

def current_card
  deck.get_a_card(@current_card_number)
end

def take_turn(my_guess)
  card_variable = current_card
  find_category
  establish_hash_keys
  @new_turn = Turn.new(my_guess, card_variable)
  update_category_count
  @turns.push(@new_turn)
  @current_card_number += 1
  number_correct
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

def find_category
current_card.category
end

def establish_hash_keys
  check_variable = find_category
  if @category_hash.include?(check_variable)
    return @category_hash
  else
    @category_hash[check_variable] = 0
  end
  # binding.pry
  return @category_hash
end

def update_category_count
  if @new_turn.correct?
  add_to_category
end
end

def add_to_category
  counter_variable =  @category_hash.values_at(find_category)
  next_counter_variable = counter_variable[0]
  next_counter_variable += 1
  @category_hash[find_category] = next_counter_variable
  return @category_hash
end
# def correct_by_category(category_arg)
#   intermediate_array = turns.find_all do |search_variable|
#   search_variable.include?(category_arg)
#    # && guess == answer
#   end
#   intermediate_array.length
#   binding.pry
# end

end
