require './lib/card'
require './lib/deck'

RSpec.describe Deck do
  before(:each) do
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("What is the name of the tallest grass?", "Bamboo", :STEM)
    @card_3 = Card.new("What is the closest planet to the Sun?", "Mercury", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    @deck = Deck.new(@cards)
  end

  describe '#initialize' do

    it 'Deck exists' do 
      expect(@deck).to be_instance_of(Deck)
    end

    it 'has array of cards' do
      expect(@deck.cards).to be(@cards)
    end

    it 'has a count' do 
      expect(@deck.count).to be 3
    end
  end

  describe '#cards_in_category' do
    it 'contains cards with a specific category' do
      expect(@deck.cards_in_category(:STEM)).to eq([@card_2, @card_3])
    end

    it 'has no cards with a specific category' do 
      expect(@deck.cards_in_category('Pop Culture')).to eq([])
    end
  end
end