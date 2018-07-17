class FairePartsController < ApplicationController
  def index
    @faireparts = Fairepart.all
    @formats = Fairepart.distinct.pluck(:format).sort

    @myformat = params[:clicked_format]

    filter_faireparts




    # @faireparts = Fairepart.new

    # @faireparts = Fairepart.all
    # if params[:verso]
    #   if params[:verso] == "true"
    #     verso = true
    #   else
    #     verso = false
    #   end
    #   if params[:pliant] == "true"
    #     pliant = true
    #   else
    #     pliant = false
    #   end
    #   if params[:couleur] == "true"
    #     couleur = true
    #   else
    #     couleur = false
    #   end

    #   @fairepart = Fairepart.search(params[:format], pliant, couleur, verso).order("created_at DESC")

    # else
    #   @fairepart = nil
    # end
  end







  def show

  end

  private

  def filter_faireparts
    if params[:clicked_format].present?
      # || params[:clicked_genre].present?
      filter_faireparts_by_selected_tags
    end
  end

  def filter_faireparts_by_selected_tags

    @faireparts = @faireparts.where(format: "#{@myformat[:format]}")


  end


end

