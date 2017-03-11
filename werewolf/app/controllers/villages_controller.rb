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

	def edit
		@village = Village.find(params[:id])
	end

	def create
		@village = Village.new(village_params)
		if @village.save
			redirect_to village_path(@village.id)
		else
			render 'new'
		end
	end

	def update
		@village = Village.find(params[:id])
		if @village.update(village_params)
			redirect_to village_path(@village.id)
		else
			render 'edit'
		end
	end

	private
		def village_params
			params[:village].permit(:name, :describe, :day, :silent, :lock, :code, :number, :job, :secret)
		end
end
