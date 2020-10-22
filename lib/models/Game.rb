class Game < ActiveRecord::Base
    belongs_to :user

end

def game_list
    Game.all.map do |game|
        puts "#{game.name}
        How to play: #{game.description}"
    end
end

def select_game
    prompt = TTY::Prompt.new()
    selected_game = prompt.select("Which game would you like to play?",[
        "Premiere Golf", 
        "Premiere Pressure", 
        "Premiere Chip"
    ])

end