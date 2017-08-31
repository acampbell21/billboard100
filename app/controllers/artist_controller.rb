class ArtistController < ApplicationController
  def index
    @artists = Artists.all
  end

  def show
  end

  def new
    @artist = Artist.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @artist = Artist.new(artist_params)

    if @sub.save
      redirect_to artists_path
    else
      render :new
    end
  end

  def update
    if @artist.update(artist_params)
      redirect_to @sub
    else
      render :edit
  end

  def destroy
    @artist.destroy
    redirect_to artists_path

  end


  private

    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:sub).permit(:name)
    end

end
