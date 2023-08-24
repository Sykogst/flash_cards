require './lib/card_generator'
require './lib/card'
filename = "cards.txt"

RSpec.describe CardGenerator do
  # before(:each) do
  #   @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  #   @card_2 = Card.new("What is the name of the tallest grass?", "Bamboo", :STEM)
  #   @card_3 = Card.new("What is the closest planet to the Sun?", "Mercury", :STEM)
  #   @card_4 = Card.new("When was the first World War Started", "1914", :History)
  #   @cards = [@card_1, @card_2, @card_3, @card_4]
  # end

  describe '#initiailize' do
    it 'CardGenerator exists' do
      cards = CardGenerator.new(filename)
      expect(cards).to be_instance_of(CardGenerator)
    end
  end

  describe '#make_cards' do
    it 'can make_cards' do
      cards = CardGenerator.new(filename).make_cards
      expect(cards).to eq([])
    end
  end
end