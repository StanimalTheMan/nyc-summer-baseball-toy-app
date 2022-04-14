class PlayersController < ApplicationController
    def index
        players_records = Player.all.includes(:batting)
        @players = players_records.map do |record|
            record.attributes.merge(
                'batting' => record.batting
            )
        end
        render json: @players
    end
end
