require 'tty-prompt'

class User < ActiveRecord::Base
    belongs_to :confirmation

    @@team = []

    def self.create_team
        prompt = TTY::Prompt.new
        puts "How many players? (Up to 6)"
        answer = gets.chomp.to_i


        while answer > 6 or answer == 0
            puts "Please enter a valid number"
            answer = gets.chomp.to_i
        end

        while answer <= 6 && answer > 0
            user_name = prompt.ask("Name?")
                if user_name == ""
                    user_name = prompt.ask("Please enter a valid name")
                end
            user_nickname = prompt.ask("Nickname?")
                if user_nickname == ""
                    user_nickname = prompt.ask("Please enter a valid nickname")
                end
            @@team << User.create(name: user_name, nickname: user_nickname)       
            answer -= 1
        end
    end

        # User.create(name: user_name, nickname: user_nickname)


    def self.team
        @@team << User.create(name: user_name, nickname: user_nickname)
    end

end