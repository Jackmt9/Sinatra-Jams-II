class Player < ActiveRecord::Base
    belongs_to :instrument
    belongs_to :artists
end