class QuotidiensController < ApplicationController

  def index
    @quotidiens = Quotidien.all
  end

  def show
    @quotidien_url = params[:url]
    @quotidien = Quotidien.find_by(url: @quotidien_url)
  end

end
