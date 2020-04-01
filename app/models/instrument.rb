class Instrument < ActiveRecord::Base
    has_many :players
    has_many :artists, through: :players
end
