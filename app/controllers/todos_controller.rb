class TodosController < ApplicationController
	def index
		@todos = Todo.all
		@todo = Todo.new
	end
	
	def create
	  Todo.create(params[:todo])
	  redirect_to todos_path  
	end
end
