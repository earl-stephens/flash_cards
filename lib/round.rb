require './lib/turn'

class Round

attr_reader :deck,
            :current_card,
            :new_turn,
            :turns,
            :num_right

def initialize(deck_arg)
  @deck = deck_arg
  @turns = []
  @num_right = 0
  # @current_card = card_1
end

def current_card
  deck.get_a_card(0)
end

def take_turn(my_guess)
  card_variable = self.current_card
  @new_turn = Turn.new(my_guess, card_variable)
  @turns.push(@new_turn)
end

def number_correct
  if @new_turn.correct?
    @num_right += 1
  end
end

end
