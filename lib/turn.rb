class Turn

  attr_accessor(:guess)

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def card
    @card
  end

  def guess
    @guess
  end

  def correct?
    @guess == card.answer
  end

  # print a feedback statement
  def feedback
    if @guess == card.answer
      puts "Correct!"
    else
      puts "Incorrect."
    end
  end


end
