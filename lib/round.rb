class Round
  attr_reader :deck, :turns, :card_index, :total_correct
  def initialize(deck)
    @deck = deck
    @turns = []
    @card_index = 0
    @question_card
    @total_correct = 0
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

  def number_correct
    @total_correct = @turns.count { |turn| turn.correct? }
  end

  def number_correct_by_category(category_filter)
    filtered_turns = @turns.select { |turn| turn.current_category == category_filter }
    filtered_turns.count { |filtered_turn| filtered_turn.correct? }
  end

  def percent_correct
    number_correct
    @total_correct.to_f / @card_index.to_f * 100.0
  end

  def percent_correct_by_category(category_filter)
    filtered_turns = @turns.select { |turn| turn.current_category == category_filter }
    filtered_correct = filtered_turns.count { |filtered_turn| filtered_turn.correct? }
    filtered_correct.to_f / filtered_turns.length.to_f * 100.0
  end
end