class AlbumsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  def index
    @albums = Album.all
  end
  def show
    @album = params[:id]
    @photos = Photo.where("album='#{params[:id]}'")
  end
end
