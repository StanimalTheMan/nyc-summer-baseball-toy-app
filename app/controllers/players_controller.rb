class PlayersController < ApplicationController
    def index
        players_records = Player.all.includes(:batting, :pitching)
        @players = players_records.map do |record|
            record.attributes.merge(
                'batting' => record.batting,
                'pitching' => record.pitching
            )
        end
        render json: @players
    end
end
