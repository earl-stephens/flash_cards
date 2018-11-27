class Card

  attr_accessor(:question, :answer, :category)

  def initialize(question, answer, category)
    @question = question
    @answer = answer
    @category = category
  end

#commented out the following, since it's not needed
  # def question
  #   @question
  # end
  #
  # def answer
  #   @answer
  # end
  #
  # def category
  #   @category
  # end

end
