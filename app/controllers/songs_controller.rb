class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @chart.songs.all
  end

  def show
  end
  
  def new
    @song = @chart.songs.new(song_params)
    if @song.save
      redirect_to chart_songs_path
    end
  end

  private

  def set_song
    @song = Song.find(params[:song_id])
  end


end
