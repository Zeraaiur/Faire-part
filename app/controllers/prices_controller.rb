class PricesController < ApplicationController
  def new
    @fairepart_id = params[:id]
    @fairepart = Fairepart.find_by(id: @fairepart_id)
    @price = []
    8.times do
      @price << Price.new
    end
  end

  def create
    params["prices"].each do |price|
      Price.create(price_params(price))
    end
    @new_fairepart = Fairepart.last.id
    @format = Fairepart.last.format
    @enveloppe = Enveloppe.find_by(format: @format)

    if !@enveloppe
      redirect_to "/faire_part/#{@new_fairepart}/enveloppe"
    else
      redirect_to root_path
    end

  end

  def edit
    @fairepart_id = params[:id]
    @fairepart = Fairepart.find_by(id: @fairepart_id)
    @prices = Price.where(fairepart_id: @fairepart_id)
  end

  def update
    params["prices"].each do |newprice|
      @price = Price.find(newprice.first)
      @price.update(price_params(newprice[1]))
    end
    redirect_to root_path
  end

  private

  def price_params(my_params)
    my_params.permit(:nombre, :unite, :fairepart_id)
  end
end
