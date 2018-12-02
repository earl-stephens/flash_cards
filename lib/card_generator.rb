class CardGenerator
attr_reader :filename

  def initialize(filename_arg)
    @filename = filename
  end

def cards
IO.foreach("./lib/cards.txt") do |line|
  puts line
end
end

end
