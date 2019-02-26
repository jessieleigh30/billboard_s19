class SongsController < ApplicationController
  # before_action :set_artist
  before_action :set_chart
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @chart.songs.all
    @songs = @artist.songs.all
  end

  def show
  end
  
  def new
    @song = @chart.songs.new
    render partial: 'form'
  end

  def update
    if @song.update(song_params)
      redirect_to @chart
    else 
      render partial: "form"
    end
  end

  def create
    @song = @chart.songs.new(song_params)
      if @song.save
        redirect_to @chart
      else
        render partial: "form"
      end
  end

  def edit
    render partial: 'form'
  end

  def destroy
    @song.destroy
    redirect_to @chart
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_chart
    @chart = Chart.find(params[:chart_id])
  end

  def song_params
    params.require(:song).permit(:title)
  end
end
