class GaleriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @galeries = Galerie.all
  end

  def show
    @galerie = Galerie.find(galerie_params)
  end

  private

  def galerie_params
    params.require(:galerie).permit(:name,:description)
  end

end
