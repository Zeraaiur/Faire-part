class EnveloppeController < ApplicationController
  def new
    @fairepart_id = params[:id]
    @fairepart = Fairepart.find_by(id: @fairepart_id)

    @enveloppe = Enveloppe.new
  end

  def create
    @enveloppe = Enveloppe.new(enveloppe_params)
    @enveloppe.save

    redirect_to root_path
  end

  def edit
  end

  def update
  end

  private

  def enveloppe_params
    params.require(:enveloppe).permit(:format, :prix)
  end
end
