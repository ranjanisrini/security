class GirlsController < ApplicationController
	def index
		@girls = Girl.all
	end

	def new
		@girl = Girl.new
	end

	def create
		@girl = Girl.new(girls_params)
		if @girl.save
			redirect_to @girl
		else
			render 'new'
		end
	end

	def show
		@girl = Girl.find(params[:id])
	end

	def edit
		@girl = Girl.find(params[:id])
	end

	def update
		@girl = Girl.find(params[:id])
		if @girl.update(girls_params)
			redirect_to @girl
		else
			render 'edit'
		end	
	end

	private

	def girls_params
		params.require(:girl).permit(:name,:age,:number,:area)
	end
end
