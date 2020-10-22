require_relative '../config/environment'
require 'tty-prompt'

def play_game
    prompt = TTY::Prompt.new # calls the prompt
    puts "Welcome to Pinnacle Golf" # title at the beginning
    puts "How many players? (Up to 6)" #asks how many / answer can only be up to 6
    answer = gets.chomp.to_i

    #User Info
    while answer > 6
        puts "Too many players, please enter a valid number"
        answer = gets.chomp.to_i
    end

    while answer <= 6 && answer > 0
        User.create_team
        answer -= 1
    end

    #Bay Selection (need to get price)
    bay_selection = prompt.select("Choose a bay", %w(Upper Middle Lower))

    if bay_selection == "Upper"
        Bay.upper
    end

    if bay_selection == "Middle"
        Bay.middle
    end

    if bay_selection == "Lower"
        Bay.lower
    end

    # # Game Selection  (make this pretty and y/n option)
    game_list
    select_game



    # Print Confirmation(need to print confirmation)


    
end

play_game
