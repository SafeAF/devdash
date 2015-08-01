
class StatsController < ApplicationController
	before_action :set_stats, only: [:show, :edit, :update, :destroy]

	# GET /todos
	# GET /todos.json
	def index

	end

	# GET /todos/1
	# GET /todos/1.json
	def show
	end




	private
	# Use callbacks to share common setup or constraints between actions.
	def set_stats
	#	@todo = Todo.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def stats_params
	#	params.require(:todo).permit(:ic)
	end
end

