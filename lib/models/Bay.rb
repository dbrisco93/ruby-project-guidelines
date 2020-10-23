require 'tty-prompt'

class Bay < ActiveRecord::Base
    
    belongs_to :confirmation
    

    def self.select_level
        prompt = TTY::Prompt.new
        level_selection = prompt.select("Choose a level", %w(Upper Middle Lower))

        puts "#{level_selection} Level"
        bays = self.all.select { |bay| bay.level == level_selection }
        bays.map do |b|
            puts "#{b.name} | Price: $#{b.price}"
        end 
        
        names = bays.map do |b|
            b.name
        end

        proceed  = prompt.select("More Bay options?",[
        "I'm ready to select",
        "Select different level"])

        
        if proceed == "I'm ready to select"
            @bay_option = prompt.select("Choose a bay:", names)
        end

        if proceed == "Select different level"
            self.select_level
        end

    end




end