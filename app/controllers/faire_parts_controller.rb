class FairePartsController < ApplicationController
  def index
    @faireparts = Fairepart.all
    @formats = Fairepart.distinct.pluck(:format).sort
    @couleurs = Fairepart.distinct.pluck(:couleur)
    @prices = Price.all

    @myformat = params[:clicked_format]
    @mycouleur = params[:clicked_couleur]
    @mypliant = params[:clicked_pliant]
    @myverso = params[:clicked_verso]

    filter_faireparts

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def filter_faireparts

    if @myformat.present? && @mycouleur.present?  && @mypliant.present? && @myverso.present?
      filter_by_format
      filter(@mycouleur, "couleur")
      filter(@mypliant, "pliant")
      filter(@myverso, "verso")

    elsif @myformat.present? && @mycouleur.present?  && @mypliant.present?
      filter_by_format
      filter(@mycouleur, "couleur")
      filter(@mypliant, "pliant")
    elsif @myformat.present? && @mycouleur.present?  && @myverso.present?
      filter_by_format
      filter(@mycouleur, "couleur")
      filter(@myverso, "verso")
    elsif @myformat.present? && @mypliant.present?  && @myverso.present?
      filter_by_format
      filter(@mypliant, "pliant")
      filter(@myverso, "verso")
    elsif @mycouleur.present? && @mypliant.present?  && @myverso.present?
      filter(@mycouleur, "couleur")
      filter(@myverso, "verso")
      filter(@mypliant, "pliant")

    elsif @myformat.present? && @mycouleur.present?
      filter_by_format
      filter(@mycouleur, "couleur")
    elsif @myformat.present? && @mypliant.present?
      filter_by_format
      filter(@mypliant, "pliant")
    elsif @myformat.present? && @myverso.present?
      filter_by_format
      filter(@myverso, "verso")
    elsif @mypliant.present? && @mycouleur.present?
      filter(@mypliant, "pliant")
      filter(@mycouleur, "couleur")
    elsif @mypliant.present? && @myverso.present?
      filter(@mypliant, "pliant")
      filter(@myverso, "verso")
    elsif @mycouleur.present? && @myverso.present?
      filter(@mycouleur, "couleur")
      filter(@myverso, "verso")

    elsif @myformat.present?
      filter_by_format
    elsif @mycouleur.present?
      filter(@mycouleur, "couleur")
    elsif @mypliant.present?
      filter(@mypliant, "pliant")
    elsif @myverso.present?
      filter(@myverso, "verso")
    end

  end

  def filter_by_format
    @faireparts = @faireparts.where("format LIKE ? OR format LIKE ?", @myformat[:format0], @myformat[:format1])
  end

  def filter(val1, val2)
    if val1[:value0] == "true"
      true_variable = true
    end
    if val1[:value1] == "false"
      false_variable = false
    end
    @faireparts = @faireparts.where("#{val2} LIKE ? OR #{val2} LIKE ?", true_variable, false_variable)
  end
end
