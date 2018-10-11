class EntendusController < ApplicationController
  def index
    @entendus = Entendu.all
  end

  def show
    @entendu_url = params[:url]
    @entendu = Entendu.find_by(url: @entendu_url)
  end

end
