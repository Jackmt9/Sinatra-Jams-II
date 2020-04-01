class Artist < ActiveRecord::Base
    has_many :players
    has_many :instruments, through: :players
end
