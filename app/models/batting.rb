class Batting < ApplicationRecord
    belongs_to :player, :class_name => 'Player', :foreign_key => 'player_id'
end
