class SongsController < ApplicationController
  
  def index
    @songs = Songs.all
  end

  def new
  end
end
