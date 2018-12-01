class Turn

  attr_reader(:guess)

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def card
    @card
  end

# method not needed due to attr_reader
  # def guess
  #   @guess
  # end

  def correct?
    @guess == card.answer
  end

  # print a feedback statement
  def feedback
    if correct?
      "Correct!"
    else
      "Incorrect."
    end
  end


end
