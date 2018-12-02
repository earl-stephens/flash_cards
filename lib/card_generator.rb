require './lib/card'
require 'pry'

class CardGenerator
attr_reader :filename
            :cardname

  def initialize(filename_arg)
    @filename = filename
    @cardname
  end

def cards
IO.foreach("./lib/cards.txt") do |line|
  counter = 1
  clean_line = line.strip.split(',')
  question = clean_line[0]
  answer = clean_line[1]
  category = clean_line[2]
   @cardname = "card_#{counter}"
   binding.pry
   @cardname = Card.new(question, answer, category)
   counter += 1
end
return @cardname
end
end
