class SessionsController < ApplicationController

  def new
  end

  def create
    artist = Artist.find_by({username: params[:username]})
    # artist = Artist.find_by(username: params[:session][:username].downcase)
    if artist && artist.authenticate(params[:password])
      session[:artist_id] = artist.id
      redirect_to artist_path(artist)
    # if artist && artist.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      render 'new'
    end
  end


  def destroy
    session[:artist_id] = nil
    redirect_to root_path
  end

end






