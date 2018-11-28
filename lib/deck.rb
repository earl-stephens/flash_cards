class Deck
  attr_reader(:cards, :last, :category_array)

  def initialize(cards)
    @cards = cards
    @last = []
    # @category_array = []
  end

  def count
    @cards.length
  end

  def cards_in_stem_category(category_arg)
    category_array = []

    if @cards[0].category == category_arg
      category_array << @cards[0]
    end
    if @cards[1].category == category_arg
      category_array << @cards[1]
    end
    if @cards[2].category == category_arg
      category_array << @cards[2]
    end
return category_array
  end
#   def find_last_elements
#     @last = []
#     @last << cards[0].category
#     @last << cards[1].category
#     @last << cards[2].category
#   end
#
#   def cards_in_a_particular_category(cat)
# @last.count(cat)

end
