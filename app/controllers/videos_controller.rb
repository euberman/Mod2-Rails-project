class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
    result = @video.url.split('/').last
    @video_id = "http://www.youtube.com/embed/#{result}"
  end


  def new
    @video = Video.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
