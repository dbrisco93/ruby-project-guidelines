class Game < ActiveRecord::Base
    has_one :confirmation

@@games = []
def self.game_list
    Game.all.map do |game|
        puts "#{game.name}
        How to play: #{game.description}"
    end
end

def self.select_game
    prompt = TTY::Prompt.new()
    selected_game = prompt.select("Which game would you like to play?".colorize(:light_blue),[
        "Pinnacle Golf", 
        "Pinnacle Pressure", 
        "Pinnacle Chip"
    ])

    @@games << Game.find_by(name: selected_game)
end

def self.games
    @@games
end
# def self.selected_game_object
#     game_name = Game.all.find_by(name: @selected_game)
#     game_name.find{|game|game.name}
# end
end