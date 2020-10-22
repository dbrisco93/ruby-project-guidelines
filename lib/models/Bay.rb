class Bay < ActiveRecord::Base
    
    belongs_to :users

    def self.upper
        puts "Upper Level Options:"
        
        bays = self.all.select { |bay| bay.level == "upper"}
        bays.map do |b|
            puts "#{b.name} | Price: $#{b.price}"
        end 


    end

    def self.middle
        puts "Middle Level Options:"
        
        bays = self.all.select { |bay| bay.level == "middle"}
        bays.map do |b|
            puts "#{b.name} | Price: $#{b.price}"
        end 
    end

    def self.lower
        puts "Lower Level Options:"
        
        bays = self.all.select { |bay| bay.level == "upper"}
        bays.map do |b|
            puts "#{b.name} | Price: $#{b.price}"
        end 
    end




end