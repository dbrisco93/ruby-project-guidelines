class Bay < ActiveRecord::Base
    belongs_to :users

    def self.upper
        puts ""
    end

    def self.middle
        puts "Middle"
    end

    def self.lower
        puts "lower"

    end
end