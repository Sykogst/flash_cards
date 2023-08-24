require './lib/card'

class CardGenerator
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
    cards_data
    # cards_data.each do |card_data|
    #   @cards << Card.new(card_data[0], card_data[1], card_data[2],)
    # end
    # @cards
  end
end