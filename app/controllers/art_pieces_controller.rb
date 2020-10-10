class ArtPiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index]

  def index
    @galerie = Galerie.find(params[:galery_id])
    @art_pieces = ArtPiece.where(galerie: @galerie)
  end
end
