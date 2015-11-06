class HelloworldsController < ApplicationController
	def index
		@helloworlds = Helloworld.all
	end
	
	def new
		@helloworld = Helloworld.new
	end
	
	def create
		@helloworld = Helloworld.create(helloworld_params)
		redirect_to root_path
	end
	
	private
	
	def helloworld_params
		params.require(:helloworld).permit(:language, :greeting)
	end
end
