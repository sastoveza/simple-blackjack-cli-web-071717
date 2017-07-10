def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  new_card = rand(1..11)
  return new_card
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
  card
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  hand = deal_card + deal_card
  display_card_total(hand)
  return hand
end

def hit?(hand)
  prompt_user
  input = get_user_input
  if input == "h"
    hand += deal_card
  elsif input == "s"
    hand
  else
    invalid_command
  end
end

def invalid_command
  puts "Sorry, not a valid command"
  gets_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total < 21

    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
