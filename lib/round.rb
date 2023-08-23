class Round
  attr_reader :deck, :turns, :card_index
  def initialize(deck)
    @deck = deck
    @turns = []
    @card_index = 0
    @question_card
  end

  def question_card
      @question_card = @deck.cards[@card_index]
  end

  def take_turn(question_guess)
    if @card_index == @deck.cards.length
      'No more cards!'
    else
      turn_1 = Turn.new(question_guess, question_card)
      @turns << turn_1
      @card_index += 1
      turn_1
    end
  end
end