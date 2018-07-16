class FairePartsController < ApplicationController
  def index
    # @faireparts = Fairepart.all
    # @faireparts = Fairepart.new
    @faireparts = Fairepart.all
    if params[:verso]
      if params[:verso] == "true"
        verso = true
      else
        verso = false
      end
      if params[:pliant] == "true"
        pliant = true
      else
        pliant = false
      end
      if params[:couleur] == "true"
        couleur = true
      else
        couleur = false
      end

      @fairepart = Fairepart.search(params[:format], pliant, couleur, verso).order("created_at DESC")

    else
      @fairepart = nil
    end
  end

  def show

  end

  private

  def fairepart_params
    params.require(:fairepart).permit(:slug, :nom, :search, :verso)
  end

end
