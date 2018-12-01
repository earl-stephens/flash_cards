class Deck
  attr_reader :cards
              # , :category_array)

  def initialize(cards)
    @cards = cards
    # @last = []
    # @category_array = []
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
    # if @cards[0].category == category_arg
    #   category_array << @cards[0]
    # end
    # if @cards[1].category == category_arg
    #   category_array << @cards[1]
    # end
    # if @cards[2].category == category_arg
    #   category_array << @cards[2]
    # end
    return category_array
  end

  #added this to get the current card in round class
  def get_a_card(card_number)
    @cards[card_number]
  end

end
