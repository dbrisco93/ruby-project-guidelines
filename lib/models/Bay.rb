require 'tty-prompt'

class Bay < ActiveRecord::Base
    
    has_one :confirmation
    
    @@bays = []

    def self.select_level
        prompt = TTY::Prompt.new
        level_selection = prompt.select("Choose a level".colorize(:light_blue), %w(Upper Middle Lower))

        puts "#{level_selection} Level"
        bays = self.all.select { |bay| bay.level == level_selection }
        bays.map do |b|
            puts "#{b.name} | Price: $#{b.price}"
        end 
        
        names = bays.map do |b|
            b.name
        end

        proceed  = prompt.select("More Bay options?".colorize(:light_blue),[
        "I'm ready to select",
        "Select different level"])

        
        if proceed == "I'm ready to select"
            bay_option = prompt.select("Choose a bay:", names)
        end

        if proceed == "Select different level"
            self.select_level
        end

       @@bays <<  Bay.find_by(level: level_selection, name: bay_option)
    end

    def self.bays
        @@bays
    end




end