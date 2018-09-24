class PagesController < ApplicationController

  def enter
  end

  def home
    @questions = Question.all
  end
end
