class QuestionsController < ApplicationController

	before_filter :authenticate_user!, only: [:index, :show]

	def index
		@questions = Question.paginate(:page => params[:page], :per_page => 5)
	end
end
