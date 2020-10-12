class ArtPiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create]

  def index
    @gallery = Gallery.find(params[:gallery_id])
    @art_pieces = ArtPiece.where(gallery: @gallery)
  end

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @art_piece = ArtPiece.new
  end

  def create
    @art_piece = ArtPiece.new(art_piece_params)
    @gallery = Gallery.find(params[:gallery_id])
    @art_piece.gallery = @gallery
    if @art_piece.save!
      redirect to gallery_art_pieces_path(@gallery)
    else
      render :new
    end
  end
  private


  def art_piece_params
    params.require(:art_piece).permit(:title, :description, :year, :gallery_id)
  end

end
