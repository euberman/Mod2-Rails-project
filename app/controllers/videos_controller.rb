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
    @video = Video.new(video_params)
    @video.save 
    redirect_to video_path(@video)
  end

  def edit 
    @video = Video.find(params[:id])
    result = @video.url.split('/').last
    @video_id = "http://www.youtube.com/embed/#{result}"
  end

  def update
    @video = Video.find(params[:id])
    @video.update(video_params)
    redirect_to video_path(@video)
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to profile_path(session[:student_id])
  end

  def like
    @video= Video.find(params[:id])
    Like.create(student_id: session[:student_id], media_id: @video.id, media_type: "Video")
    redirect_to video_path(@video)
  end

  private 
  def video_params
    params.require(:video).permit(:name, :date, :url, :description, :student_id)
  end 
end
