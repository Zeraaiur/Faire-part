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
  end

  private

  def price_params(my_params)
    my_params.permit(:nombre, :unite, :fairepart_id)
  end

end
