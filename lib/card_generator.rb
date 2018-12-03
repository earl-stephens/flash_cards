require './lib/card'
require 'pry'

class CardGenerator
attr_reader :filename,
            :cardname

  def initialize(filename_arg)
    @filename = filename
    @cardname
  end

def cards
  input_array = IO.readlines("./lib/cards.txt")
  counter = 1
  input_array.length.to_i.times do |array_index|
     intermediate_array = input_array[array_index].strip.split(',')
  question = intermediate_array[0]
  answer = intermediate_array[1]
  category = intermediate_array[2]
  # binding.pry
   @cardname = "card_#{counter}"
      counter += 1
      # binding.pry
   @cardname = Card.new(question, answer, category)
 end
 @cardname
# binding.pry
end

end
