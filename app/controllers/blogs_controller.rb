class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @student = Student.find(params[:id])
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private 
    def blog_params
      params.require(:blog).permit(:date, :name, :content)
    end

end
