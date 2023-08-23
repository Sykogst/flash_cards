require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

RSpec.describe Round do
  before(:each) do
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("What is the name of the tallest grass?", "Bamboo", :STEM)
    @card_3 = Card.new("What is the closest planet to the Sun?", "Mercury", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    @deck = Deck.new(@cards)
    @round = Round.new(@deck)
  end

  describe '#initiailize' do
    it 'Round exists' do
      expect(@round).to be_instance_of(Round)
    end

    it 'has deck' do
      expect(@round.deck).to eq(@deck)
    end

    it 'has turns' do
      expect(@round.turns).to eq([])
    end
  end

end