def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game
  card_total = gets.chomp
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  display_card_total = deal_card + deal_card
  puts display_card_total
end

def hit?
  if get_user_input == "s"
    display_card_total
  elsif get_user_input == "h"
    new_player_hand = deal_card + display_card_total
    display_card_total = new_player_hand
  else invalid_command + prompt_user
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  until get_user_input == "Exit"
    welcome
    initial_round
    hit?
    hit?
    if display_card_total > 21 
     end_game
end
    
