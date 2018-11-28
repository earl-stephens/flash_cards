class Deck
  attr_reader(:cards, :last)

  def initialize(cards)
    @cards = cards
    @last = []
  end

  def number_of_cards
    @cards.length
  end

  def find_last_elements
    @last = []
    @last << cards[0].category
    @last << cards[1].category
    @last << cards[2].category
  end

  def cards_in_a_particular_category
@last.count{|x| x == :STEM}

  end

end
