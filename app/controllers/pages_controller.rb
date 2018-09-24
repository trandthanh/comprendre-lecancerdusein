class PagesController < ApplicationController

  def enter
  end

  def home
    @questions = Question.all

    @quotidiens = Quotidien.all
  end
end
