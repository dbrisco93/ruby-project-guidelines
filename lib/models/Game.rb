class Game < ActiveRecord::Base
    belongs_to :user

end

def game_list
    
    Game.all.map do |game|
        puts "Name: #{game.name}"
        puts "Description: #{game.description}"
        puts "Suggested Club: #{game.club}"
    end
        
end
