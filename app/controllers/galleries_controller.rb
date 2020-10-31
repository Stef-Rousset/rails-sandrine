class GalleriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @galleries = Gallery.all
    # @sculptures_gallery = Gallery.find_by(name: "Entre Terre et Pierres")
  end

  # def show
  #   @gallery = Gallery.find(gallery_params)
  #   @sculptures_gallery = Gallery.find_by(name: "Entre Terre et Pierres")
  # end

  # private

  # def gallery_params
  #   params.require(:gallery).permit(:name,:description, :photo, :art_pieces)
  # end

end
