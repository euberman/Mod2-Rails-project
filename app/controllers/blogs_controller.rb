class BlogsController < ApplicationController
  def index
    @blogs = Blog.order(date: :desc)
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to blog_path(@blog)
  end

  def edit
    @blog = Blog.find(params[:id])
    @old_content = @blog.content
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    redirect_to blog_path(@blog)
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to profile_path(session[:student_id])
  end

  private 
    def blog_params
      params.require(:blog).permit(:date, :name, :content, :student_id)
    end

end
