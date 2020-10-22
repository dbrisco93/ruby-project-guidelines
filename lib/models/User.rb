class User < ActiveRecord::Base
    has_one :game
    has_one :bay
    has_one :timeslot
    has_one :confirmation

    @@team = []

    def self.create_team
        puts "Name?"
        user_name = gets.chomp
        while user_name == ""
            puts "Please enter a valid name"
            user_name = gets.chomp
        end
        puts "Nickname?"
        user_nickname = gets.chomp
        while user_nickname == ""
            puts "Please enter a valid nickname"
            user_nickname = gets.chomp
        end
        User.create(name: user_name, nickname: user_nickname)
    end

    # def delete_player  (find method for)
    # end

    def team
        @@team << User.create(name: user_name, nickname: user_nickname)
    end

   # User.create()

end


