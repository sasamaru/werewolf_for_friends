class VillagesController < ApplicationController

	def index
		@villages = Village.all
	end

	def show
		#params[:id]はroutesで受け取った値になる
		@village = Village.find(params[:id])
	end

	def new
		@village = Village.new
	end

	def create
		@village = Village.new(village_params)
		@village.save
		redirect_to village_path(@village.id)
	end

	private
		def village_params
			params[:village].permit(:name, :describe, :day, :silent, :lock, :code, :number, :job, :secret)
		end
end
