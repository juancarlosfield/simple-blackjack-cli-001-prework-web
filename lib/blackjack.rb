def welcome
  # code #welcome here
    puts "Welcome to the Blackjack Table"

end

def deal_card
  # code #deal_card here. like in the dice roll example +1. cant touch 0. 
  1 + rand(11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here. look on the spec/blackjack_spec.rb
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here. It only needs to use the gets method to capture the user's input
 gets.chomp 
end

def end_game(card_total)
  # code #end_game here. Stubbing
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
 card1 = deal_card && card2 = deal_card
 card_total = (card1 + card2)
 display_card_total(card_total)
 card_total
end

def hit?(card_total)
prompt_user
response = get_user_input

  if response == "h" 
    card = deal_card
    card_total += card
    display_card_total(card_total)

  elsif response != "s"
    invalid_command
    prompt_user

  end
  card_total
end


def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
 welcome # Follow the errors . Each method adds up. one per line  
 card_total = initial_round
 card_total = hit?(card_total)
 until card_total > 21 do
 end     # end for until 
 end_game(card_total)
 end    #end for def runner
    
