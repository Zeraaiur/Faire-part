class PricesController < ApplicationController
  def new
    @fairepart_id = params[:id]
    @fairepart = Fairepart.find_by(id: @fairepart_id)
    @nombre = 50

    @price = Price.new

  end

  def create

    @price = Price.new
    @price.fairepart_id = params[:id].to_i

    @price = Price.new(price_params)
    @price.save
  end

  private

  def price_params
    params.require(:price).permit(:nombre, :unite, :fairepart_id)
  end

end
