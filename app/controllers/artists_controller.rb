class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(artist_params)
    redirect_to artist_path(artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(
      :username,
      :biography,
      :artist_statement,
      :password,
      :password_confirmation,
      :picture_url
    )
  end

end
