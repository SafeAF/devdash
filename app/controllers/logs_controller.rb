
class LogsController < ApplicationController
	before_action :set_logs, only: [:show, :update, :destroy]

	# GET /todos
	# GET /todos.json
	def index
	#	@todos = Logs.all
	end

	# GET /todos/1
	# GET /todos/1.json
	def show
	end


	# DELETE /todos/1
	# DELETE /todos/1.json
	def destroy
	#	@todo.destroy
	#	respond_to do |format|
	#		format.html { redirect_to todos_url }
	#		format.json { head :no_content }
	#	end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_logs
	#	@todo = Todo.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def logs_params
		params.require(:logs).permit(:num, :name, :devicereportedtime,
		                             :receivedat,
		                          :priority, :message, :id)
	end
end
