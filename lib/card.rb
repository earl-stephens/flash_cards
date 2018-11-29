class Card

  attr_reader(:question, :answer, :category)

  def initialize(question, answer, category)
    @question = question
    @answer = answer
    @category = category
  end

# methods below not needed due to attr_reader
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
