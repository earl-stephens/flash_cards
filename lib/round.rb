class Round
attr_reader(:deck)

def initialize(deck_arg)
  @deck = deck_arg
end

def turns
  turns = []
end

def current_card
  deck.get_a_card(0)
end

end
