class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question_url = params[:url]
    @question = Question.find_by(url: @question_url)

  end

end
