class AdventuresController < ApplicationController
	
	def new
		@adventure = Adventure.new
  	end

  	def index
  		@adventure = Adventure.all
  	end

  	def show
  		@adventure = Adventure.find(params[:id])
  	end

  	def create
  		@adventure = Adventure.new(adventure_params)
 
  		if @adventure.save
  			redirect_to @adventure
  		else
  			render 'new'
  		end
  	end

  	private
  		def adventure_params
  			params.require(:adventure).permit(:animal, :amount)
  		end

end
