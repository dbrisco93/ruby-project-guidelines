require_relative '../config/environment'
require 'tty-prompt'


def play_game
prompt = TTY::Prompt.new

    puts "Welcome to Pinnacle Golf" # title at the beginning
 

    # User Info
    User.create_team
 
    # Bay Selection
    Bay.select_level

    # # Game Selection
    game_list
    select_game

    #Confirmation 
    confirm  = prompt.select("Confirm Reservation",[
        "Confirm",
        "Start Over"])

        
        if confirm == "Confirm"
            Confirmation.print_confirmation
        end

        if confirm == "Start Over"
            extra_sure = prompt.select("Are you sure?",[
        "Yes",
        "No"])

            if extra_sure =- "Yes"
                play_game
            end
            
            if extra_sure == "No"
                confirm
            end
            
        end
    
end


play_game
