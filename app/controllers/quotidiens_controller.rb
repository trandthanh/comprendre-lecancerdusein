class QuotidiensController < ApplicationController

  def show
    @quotidien_url = params[:url]
    @quotidien = Quotidien.find_by(url: @quotidien_url)
  end

end
