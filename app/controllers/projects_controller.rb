class ProjectsController < ApplicationController



  def new
    # set the project's artist ID to the artist in session
    # then we can hide the artist_id as a hidden field in the form
    @project = Project.new(artist_id: session[:artist_id])
    # @artist  = Artist.find(params[:artist_id])
  end

  def create
    @project = Project.create(project_params)
    # find the artist in session and set it as the project's artist
    # @project.artist_id = session[:artist_id]
    # @project.save
    redirect_to @project.artist
  end

  def destroy
    project = Project.find_by(id: params[:id])
    project.delete
    # current_artist comes from ApplicationController
    redirect_to current_artist
  end

  private

  def project_params
    params.require(:project).permit(
      :name,
      :description,
      :picture_url,
      :artist_id
    )
  end


  # def new
  #   @venue = Venue.find(params[:venue_id])
  #   @event = Event.new
  #   # family-friendly venues should only be presented with family-friendly bands
  #   @bands = @venue.family_friendly ? Band.all : Band.where(explicit_lyrics: false)
  # end

  # def create
  #   @event = Event.create(event_params)
  #   @event.venue_id = params[:venue_id]
  #   @event.save
  #   redirect_to @event
  # end

end
