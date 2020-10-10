class GaleriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @galeries = Galerie.all
    @sculptures_galerie = Galerie.find_by(name: "Entre Terre et Pierres")
  end

  def show
    @galerie = Galerie.find(galerie_params)
  end

  private

  def galerie_params
    params.require(:galerie).permit(:name,:description, :photo, :art_pieces)
  end

end
