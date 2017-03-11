class VillagesController < ApplicationController

	def index
		@villages = Village.all
	end
end
