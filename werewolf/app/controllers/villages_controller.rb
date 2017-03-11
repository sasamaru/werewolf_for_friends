class VillagesController < ApplicationController

	before_action :set_village, only: :[:show, :edit, :update, :destroy]
	def index
		@villages = Village.all
	end

	def show
	end

	def new
		@village = Village.new
	end

	def edit
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
		if @village.update(village_params)
			redirect_to village_path(@village.id)
		else
			render 'edit'
		end
	end

	def destroy
		@village.destroy
		redirect_to root_path
	end

	private
		def village_params
			params[:village].permit(:name, :describe, :day, :silent, :lock, :code, :number, :job, :secret)
		end

		def set_village
			@village = Village.find(params[:id])
		end
end
