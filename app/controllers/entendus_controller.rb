class EntendusController < ApplicationController
  def index
    @entendus = Entendu.all
  end
end
