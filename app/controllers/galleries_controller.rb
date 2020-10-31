class GalleriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @galleries = Gallery.all
  end

end
