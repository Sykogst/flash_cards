class Deck
  attr_reader :cards
  # cards, parameter containing array of card object instances from Card class
  def initialize(cards)
    @cards = cards
    @total_cards
  end

  # Method: cards_in_category, 1 param, returns cards that match the category
  def cards_in_category(category_filter)
    @cards.select { |card| card.category == category_filter }
  end

  def total_cards
    @cards.length
  end

end