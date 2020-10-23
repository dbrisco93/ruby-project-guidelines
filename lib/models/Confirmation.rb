require 'pry'

class Confirmation < ActiveRecord::Base
    has_many :users
    has_one :game
    has_one :bay

    def self.print_confirmation
        puts "Thanks for choosing Pinnacle Golf, here's your information"

        


        
        
    end

end