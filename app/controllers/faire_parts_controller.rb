class FairePartsController < ApplicationController
  def index
    @fairepart = Fairepart.all
  end

  def show
  end
end
