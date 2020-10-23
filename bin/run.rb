require_relative '../config/environment'
require 'tty-prompt'


def play_game
prompt = TTY::Prompt.new

    puts "Welcome to Pinnacle Golf".colorize(:light_blue) # title at the beginning
 

    # User Info
    User.create_team
 
    # Bay Selection
    Bay.select_level

    # # Game Selection
    Game.game_list
    Game.select_game

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

            if extra_sure == "Yes"
                self.play_game
            end
            
            if extra_sure == "No"
                Confirmation.print_confirmation
            end
            
        end
    
end


play_game
