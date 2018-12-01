class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def cards_in_category(category_arg)
    category_array = []
    @cards.each do |temp_var|
      if temp_var.category == category_arg
        category_array << temp_var
      end
    end
    return category_array
  end

  #added this to get the current card in round class
  def get_a_card(card_number)
    @cards[card_number]
  end

end
