class FairePartsController < ApplicationController
  def index
    @faireparts = Fairepart.all
    @formats = Fairepart.distinct.pluck(:format).sort

    @myformat = params[:clicked_format]
    @mycouleur = params[:clicked_couleur]

    filter_faireparts

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def filter_faireparts

    # if params[:clicked_format].present? && params[:clicked_couleur].present?
    #   filter_faireparts_by_selected_couleurs
    #   @faireparts = @faireparts.where(format: params[:clicked_format][:format])
    if params[:clicked_format].present?
      filter_by_format
     # @faireparts = @faireparts.where(format: params[:clicked_format][:format0])


   # elsif params[:clicked_couleur].present?
   #  filter_faireparts_by_selected_couleurs

 end
end

def filter_by_format
  @faireparts = @faireparts.where("format LIKE ? OR format LIKE ?", params[:clicked_format][:format0], params[:clicked_format][:format1])
end





def filter_faireparts_by_selected_couleurs

#  if @mycouleur[:couleur] == "true"
#   couleurbool = true
# elsif @mycouleur[:couleur] == "false"
#   couleurbool = false
# end


@faireparts = @faireparts.where(couleur: couleurbool)


end


end

