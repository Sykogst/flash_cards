require './lib/card'

class CardGenerator
  attr_reader :cards
  def initialize(file)
    @file = file
    @cards = []
  end

  def make_cards
    # Open file
    cards_file = File.open(@file)
    # Read data and split by line
    cards_data = cards_file.readlines.map(&:chomp)
    # close file
    cards_file.close
    cards_data.each 

  end
end