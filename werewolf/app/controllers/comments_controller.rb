class CommentsController < ApplicationController
	
	def create
		@village = Village.find(params[:village_id])
		@player = Player.find(3)#current_playerとかにする
		@comment = @player.comments.create(comment_params)
		redirect_to village_path(@village.id)
	end

	private

		def comment_params
			params[:comment].permit(:content)
		end
end
