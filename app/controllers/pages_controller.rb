class PagesController < ApplicationController

  def enter
  end

  def home
    @questions = Question.all

    @quotidiens = Quotidien.all

    @entendus = Entendu.all
  end

  def project
  end
end
