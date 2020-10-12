class ArtPiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create]

  def index
    @galerie = Galerie.find(params[:galery_id])
    @art_pieces = ArtPiece.where(galerie: @galerie)
  end

  def new
    @galerie = Galerie.find(params[:galery_id])
    @art_piece = ArtPiece.new
  end

  def create
    @art_piece = ArtPiece.new(art_piece_params)
    @galerie = Galerie.find(params[:galery_id])
    @art_piece.galerie = @galerie
    if @art_piece.save!
      redirect to galery_art_pieces_path(@galerie)
    else
      render :new
    end
  end
  private


  def art_piece_params
    params.require(:art_piece).permit(:title, :description, :year, :galerie_id)
  end

end
