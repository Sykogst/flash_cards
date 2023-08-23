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

    it 'has question_card' do
      expect(@round.question_card).to eq(@card_1)
    end
  end

  describe '#take_turn' do
    it 'take_turn creates Turn object, and moves to next card' do
      new_turn = @round.take_turn('Juneau')
      expect(new_turn).to eq(new_turn)
      expect(new_turn.class).to eq(Turn)
      expect(new_turn.correct?).to be true

      another_turn = @round.take_turn('Bluegrass')
      expect(another_turn).to eq(another_turn)
      expect(another_turn.correct?).to be false
    end

    it 'no more cards left' do
      new_turn = @round.take_turn('Juneau')
      another_turn = @round.take_turn('Grass')
      last_turn = @round.take_turn('Mars')
      i_want_more = new_turn = @round.take_turn('MORE')
      expect(i_want_more).to eq('No more cards!')
    end
  end

end