class SongsController < ApplicationController
  def index
    @albums = Album.includes(:tracks).all
  end

  def show
    @track = Track.find(params[:id])
  end
end
