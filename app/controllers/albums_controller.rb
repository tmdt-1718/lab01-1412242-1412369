class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end
  def show
    @album = params[:id]
    @photos = Photo.where("album='#{params[:id]}'")
  end
end
