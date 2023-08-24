class Turn
  # guess - This method returns the guess
  # card - This method returns the Card
  attr_reader :guess, :current_card, :correct, :current_category
  # A turn is initialized with two arguments. 
  # The first is a string representing a guess to a card’s question. 
  # The second argument is a Card object representing the current flashcard being shown.
  def initialize(guess, current_card)
    @guess = guess
    @current_card = current_card
    @guess == @current_card.answer ? @correct = true : @correct = false
    @current_category = current_card.category
  end
  # correct? - This method returns a boolean indicating if the guess matched the answer on the Card.
  def correct?
    @correct
  end
  # feedback - This method either returns "Correct!" or "Incorrect." based on whether the guess was correct or not.
  def feedback
    @correct == true ? ('Correct!') : ('Incorrect')
  end
end