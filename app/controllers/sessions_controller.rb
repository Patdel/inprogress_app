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

end


# if(params[:title] == 'instructor')
#       instructor = Instructor.find_by({email: params[:email]})

#       if instructor && instructor.authenticate(params[:password])
#         session[:instructor_id] = instructor.id
#         redirect_to instructor_path(instructor)
#       else
#         render :new




 # "username"
 # "biography"
 # "artist_statement"
 # "password_digest"
 # "picture_url"
 # "created_at"
 # "updated_at"
