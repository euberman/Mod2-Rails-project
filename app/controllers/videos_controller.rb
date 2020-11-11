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
    redirect_to student_path(session[:student_id])
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
    redirect_to student_path(session[:student_id])
  end

  private 
  def video_params
    params.require(:video).permit(:name, :date, :url, :description, :student_id)
  end 
end
