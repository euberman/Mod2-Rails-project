class LikesController < ApplicationController
  before_action :find_owner

  def create
    @owner.likes.create(student_id: session[:student_id])

    if 
    redirect_to post_path(@post)
  end

  def create_blog_like

  end
  
  def 

  end

  private
  def find_owner
    if params[:blog_id]
      @owner = Blog.find(params[:blog_id])
    else
      @owner = Video.fing(params[:video_id])
    end
    @owner
  end
end
