require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("What is the name of the tallest grass?", "Bamboo", :STEM)
card_3 = Card.new("What is the closest planet to the Sun?", "Mercury", :STEM)
card_4 = Card.new("When was the first World War Started", "1914", :History)
p cards = [card_1, card_2, card_3, card_4]
deck_1 = Deck.new(cards)
round_1 = Round.new(deck_1)

def start(round)
  # Welcome message with number of cards in deck
  puts "Welcome! You're playing with #{round.deck.total_cards} cards."
  puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
  # User input loop to go through entire deck
  while (round.card_index) < round.deck.total_cards
    puts "This is card number #{round.card_index + 1} out of #{round.deck.total_cards}"
    puts "Question: #{round.question_card.question}"
    input_answer = gets.chomp
    round.take_turn(input_answer)
    puts round.turns.last.feedback
  end
  # Results messages, total and by category
  puts '~~~~~~~~~~~~~~~~~GAME OVER~~~~~~~~~~~~~~~~~'  
  puts "You had #{round.number_correct} correct guesses out of #{round.deck.total_cards} for a total score of #{round.percent_correct.round}%."
  puts "Geography - #{round.percent_correct_by_category(:Geography).round}% correct"
  puts "STEM - #{round.percent_correct_by_category(:STEM).round}% correct"
  puts "History - #{round.percent_correct_by_category(:History).round}% correct"

end

# start(round_1)