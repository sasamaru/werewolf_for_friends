class PlayersController < ApplicationController

	
	def index
		@villages = Village.all
	end

	def show
	end

	def new
		@player = Player.new
	end

	def edit
	end

	def create
		@village = Village.find(params[:village_id])
		@player = @village.players.create(player_params)
		redirect_to village_path(@village.id)
	end

	def destroy
		@player = Player.find(params[:id])
		@player.destroy
		redirect_to root_path
	end



	private
		def player_params
			params[:player].permit(:name,  :image)
		end

end
