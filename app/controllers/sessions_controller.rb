class SessionsController < ApplicationController

  def login
      render :layout => "login"# nothing to do here!
  end

  def landing_page
    @blogs = Blog.all.order("date desc")
    @videos = Video.all
    render :layout => "main"
  end

  def is_student_logged_in
    if logged_in?
      redirect_to profile_path
      # redirect_to student_path(session[:student_id])
    else
      redirect_to login_path
    end
  end

  def process_login
    @student = Student.find_by(email: params[:email])
    
    if @student
      session[:student_id] = @student.id
      session[:student_name] = @student.name
      session[:current_student] = @student
      
      redirect_to profile_path
    else
      render :login
    end
  
  end
  
  def destroy
    session.delete :student_id
    redirect_to login_path
  end 
end