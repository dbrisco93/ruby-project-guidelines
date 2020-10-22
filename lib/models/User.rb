class User < ActiveRecord::Base
    has_one :game
    has_one :bay
    has_one :timeslot
    has_one :confirmation

    @@team = []

    def self.create_team
        puts "Name?"
        @user_name = gets.chomp
        puts "Nickname?"
        @user_nickname = gets.chomp
    end

    def delete_player
    end

    def team
        @@team << User.create(name: user_name, nickname: user_nickname)
    end

   # User.create()

end


