class SessionsController < ApplicationController

  def login
      render :layout => "landingpage"# nothing to do here!
  end

  def is_student_logged_in
    if logged_in?
      redirect_to student_path(session[:student_id])
    else
      render :login
    end
  end

  def process_login
    @student = Student.find_by(email: params[:email])
    session[:student_id] = @student.id

    if @student
      redirect_to 'student_path(@student)'
    else
      render :login
    end
  
  end
  
  def destroy
    session.delete :username
  end 
end