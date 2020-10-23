require 'pry'

class Confirmation < ActiveRecord::Base
   belongs_to :user
    belongs_to :game
    belongs_to :bay

    def self.print_confirmation
        puts "Thanks for choosing Pinnacle Golf, your order is now confirmed. Order information: ".colorize(:light_blue)
   
        name = User.team.map do |u|
            u.name
            end
        nickname = User.team.map do |u|
                u.nickname
            end
        bay = Bay.bays.map do |b|
            b.name
        end
        game = Game.games.map do |g|
            g.name
            end
        price = Bay.bays.map do |b|
            b.price
        end

        puts "Name:".colorize(:light_blue)
        puts name
        puts "Nickname:".colorize(:light_blue) 
        puts nickname
        puts "Bay:".colorize(:light_blue)
        puts bay
        puts "Game:".colorize(:light_blue)
        puts game
        puts "Total:".colorize(:light_blue)
        puts price

        # Confirmation.create(name: name, nickname: nickname, bay: bay, game: game, total: price)
        

    end

end