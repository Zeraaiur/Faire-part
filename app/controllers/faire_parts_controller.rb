class FairePartsController < ApplicationController
  def index
    @PRIXENVELOPPE5X7 = 0.207
    @PRIXENVELOPPE4X5 = 0.1725
    @faireparts = Fairepart.all
    @formats = Fairepart.distinct.pluck(:format).sort
    @couleurs = Fairepart.distinct.pluck(:couleur)
    @prices = Price.all

    @mynombre = params[:nombre]
    @myformat = params[:clicked_format]
    @mycouleur = params[:clicked_couleur]
    @mypliant = params[:clicked_pliant]
    @myverso = params[:clicked_verso]
    @myprice_unit = 25
    @myprice = 0

    @myenveloppe = params[:clicked_enveloppe] || {"value" => "false"}
    @myprice_enveloppe = 0

    if @mynombre
      price_eval
    end

    filter_faireparts

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @faireparts = Fairepart.all
    @fairepart = params[:fairepart]
    @enveloppe = params[:enveloppe]
    @nombre = params[:nombre]
    @price = params[:price]
    @prix_enveloppe = params[:prix_enveloppe]
    @faireparts = @faireparts.where("id LIKE ?", @fairepart.to_i)
    @TPS = 0.05
    @TVQ = 0.09975
    @subtotal = @price.to_f + @prix_enveloppe.to_f
    @total_tps = @subtotal * @TPS
    @total_tvq = @subtotal * @TVQ
    @total = @subtotal + @total_tps + @total_tvq
  end

  def new
    @fairepart = Fairepart.new
  end

  def create
    @fairepart = Fairepart.new(fairepart_params)

    if @fairepart.couleur == true
      mycouleur = "couleur"
      mycouleurslug = "couleur"
    else
      mycouleur = "noir-blanc"
      mycouleurslug = "nb"
    end

    if @fairepart.pliant == true
      mypliant = "pliantes"
      mypliantslug = "pliant"
    else
      mypliant = "non-pliantes"
      mypliantslug = "np"
    end

    if @fairepart.verso == true
      myverso = ", recto-verso"
      myversoslug = "rv"
    else
      myverso = ""
      myversoslug = "recto"
    end

    @fairepart.nom = "cartes #{mypliant}, #{@fairepart.format}, #{mycouleur}#{myverso}"
    @fairepart.slug = "#{mypliant}#{@fairepart.format}#{mycouleur}#{myverso}"

    if @fairepart.save
      @new_fairepart = Fairepart.last.id
      redirect_to "/faire_part/#{@new_fairepart}/prix"

    else

      respond_to do |format|
        format.html
        format.js
      end
    end




  end

  private

  def fairepart_params
    params.require(:fairepart).permit(:nom, :slug, :couleur, :format, :pliant,:verso, :image)
  end

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
    @faireparts = @faireparts.where("format LIKE ?
      OR format LIKE ? OR format LIKE ? OR format LIKE ?
      OR format LIKE ? OR format LIKE ?", @myformat[:format0], @myformat[:format1],
      @myformat[:format2], @myformat[:format3], @myformat[:format4], @myformat[:format5])
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

  def price_eval
    index = (@mynombre.to_i / 25)
    @myprice_unit = index * 25
    if @myprice_unit == 0
      @myprice_unit = 25
    end
    if @myprice_unit > 200
      @myprice_unit = 200
    end
  end
end
