require 'tty-prompt'

class User < ActiveRecord::Base
    has_one :confirmation

    @@team = []

    def self.create_team
        prompt = TTY::Prompt.new
        puts "How many players? (Up to 6)"
        answer = gets.chomp.to_i

        while answer > 6 or answer == 0
            puts "Please enter a valid number"
            answer = gets.chomp.to_i
        end

        if answer <= 6 && answer > 0
            user_name = prompt.ask("What is your name?".colorize(:light_blue))
            if user_name == ""
                user_name = prompt.ask("Please enter a valid name")
            end
            user_nickname = prompt.ask("Nickname?")
            if user_nickname == ""
                user_nickname = prompt.ask("Please enter a valid nickname")
            end
            answer -= 1

            @@team << User.create(name: user_name, nickname: user_nickname)
        end

        while answer <= 6 && answer > 0
            puts "Additional Players"
            user_name = prompt.ask("Name?".colorize(:light_blue))
                if user_name == ""
                    user_name = prompt.ask("Please enter a valid name")
                end
            user_nickname = prompt.ask("Nickname?")
                if user_nickname == ""
                    user_nickname = prompt.ask("Please enter a valid nickname")
                end     
            answer -= 1
        end
    end

    def self.team
        @@team
    end



end
