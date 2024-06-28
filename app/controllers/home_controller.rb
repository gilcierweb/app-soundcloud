class HomeController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @track = Track.find(params[:id])
  end
end
