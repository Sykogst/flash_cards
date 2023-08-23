class Deck
  attr_reader :cards, :count, :category_deck
  # cards, parameter containing array of card object instances from Card class
  def initialize(cards)
    @cards = cards
    @count = cards.length
    @category_deck = nil
  end
  # Method: cards_in_category, 1 param, returns cards that match the category
  def cards_in_category(category_filter)
    @category_deck = @cards.select { |card| card.category == category_filter }
  end
end