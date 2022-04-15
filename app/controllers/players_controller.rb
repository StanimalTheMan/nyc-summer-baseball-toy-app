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

    def show
        @player_record = Player.includes(:batting, :pitching).find(params[:id])
        @player = @player_record.attributes.merge(
            'batting' => @player_record.batting,
            'pitching' => @player_record.pitching
        )
        render json: @player
    end
end
