class Confirmation < ActiveRecord::Base
    has_many :users
    has_one :game
    has_one :timeslot
    has_one :bay
end