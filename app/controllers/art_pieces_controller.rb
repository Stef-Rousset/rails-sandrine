class ArtPiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create, :destroy, :edit]
  # a modif pour autoriser new create et destroy seulement a admin
  before_action :set_art_piece, only: [:edit, :update, :destroy]

  def index
    @gallery = Gallery.find(params[:gallery_id])
    @art_pieces = ArtPiece.where(gallery: @gallery).order(year: :desc)
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
      redirect_to gallery_art_pieces_path(@gallery)
    else
      render :new
    end
  end

  def edit
    @gallery = Gallery.find(params[:gallery_id])
  end

  def update
    @art_piece.update(art_piece_params)
    redirect_to gallery_art_pieces_path(@art_piece.gallery)
  end

  def destroy
    @art_piece.destroy
    redirect_to gallery_art_pieces_path(@art_piece.gallery)
  end

  private

  def set_art_piece
    @art_piece = ArtPiece.find(params[:id])
  end

  def art_piece_params
    params.require(:art_piece).permit(:title, :description, :dimension, :year, :gallery_id, photos: [])
  end

end
