class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # helpers is a method that takes a symbol of the name of a method
  # it allows us to call the method in a view
  helper_method :current_artist

  # we define current artist here so that we can call it in all the
  # controllers that inherit from ApplicationController
  def current_artist
    # if we stored the artist's id in session
    # then we will search for that artist
    # and assign it to @artist
    @artist = Artist.find_by({id: session[:artist_id]}) if session[:artist_id]
  end
end
